import 'dart:developer';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import '../generated/voxov.pbgrpc.dart';

class VClient {
  final String host;
  final int port;
  final ChannelCredentials credentials;
  final Int64 ttl;

  late ClientChannel channel;
  late VOxOVClient stub;

  late List<int> token;

  bool sessionActive = false;

  VClient(this.host, this.port, this.credentials, this.ttl) {
    channel = ClientChannel(host,
        port: port,
        options: ChannelOptions(
          credentials: credentials,
          codecRegistry:
              CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        ));
    stub = VOxOVClient(channel);
  }

  VClient.local()
      : host = 'localhost',
        port = 10001,
        credentials = const ChannelCredentials.insecure(),
        ttl = Int64(600);

  Future<void> shutdown() async {
    return await channel.shutdown();
  }

  Future<CreateSessionReply> createSession() async {
    try {
      return await stub.createSession(
        CreateSessionRequest()
          ..apiVersion = 1
          ..ttl = ttl,
      );
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return CreateSessionReply()
        ..apiVersion = 0
        ..token = <int>[];
    }
  }

  Future<UpdateSessionReply> updateSession() async {
    try {
      //log("Update session ${DateTime.now()}");
      return await stub.updateSession(
        UpdateSessionRequest()
          ..ttl = ttl
          ..token = token,
      );
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return UpdateSessionReply()..ok = false;
    }
  }

  Future<void> startSession() async {
    sessionActive = true;
    final r = await createSession();
    token = r.token;
    if (token.isEmpty) sessionActive = false;
  }

  Future<void> keepSession() async {
    while (sessionActive) {
      await Future.delayed(Duration(seconds: ttl.toInt() ~/ 2));
      if (sessionActive && !(await updateSession()).ok) {
        sessionActive = false;
      }
    }
  }

  Future<void> stopSession() async {
    sessionActive = false;
    try {
      await stub.updateSession(
        UpdateSessionRequest()
          ..token = token
          ..ttl = Int64(1),
      );
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
    }
  }

  Future<List<String>?> authenticate() async {
    if (!sessionActive) return null;
    try {
      var reply = await stub.authenticate(AuthenticateRequest()..token = token);
      if (reply.tel.isEmpty && reply.tel.isEmpty) {
        return null;
      } else {
        return [reply.tel, reply.msg];
      }
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return null;
    }
  }

  Future<Int64?> whoAmI(String tel, String msg) async {
    if (!sessionActive) return null;
    try {
      var reply = await stub.whoAmI(WhoAmIRequest()
        ..tel = tel
        ..msg = msg
        ..token = token);
      if (reply.person == 0) {
        return null;
      } else {
        return reply.person;
      }
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return null;
    }
  }

  Future<Person?> readPerson(Int64 pid) async {
    if (!sessionActive) return null;
    try {
      var reply = await stub.readPerson(Person()
        ..pid = pid
        ..token = token);
      if (reply.pid == 0) {
        return null;
      } else {
        return reply;
      }
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return null;
    }
  }

  Future<Device?> createDevice(String dName, dInfo) async {
    if (!sessionActive) return null;
    try {
      var reply = await stub.createDevice(Device()
        ..dname = dName
        ..dinfo = dInfo);
      if (reply.did == 0) {
        return null;
      } else {
        return reply;
      }
    } catch (e) {
      if (kDebugMode) {
        log('Caught error: $e');
      }
      return null;
    }
  }
}
