import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import '../generated/voxov.pbgrpc.dart';

class Client {
  final Object host;
  final int port;
  final ChannelCredentials credentials;
  final Int64 ttl;

  late ClientChannel channel;
  late VOxOVClient stub;

  late List<int> token;

  var sessionActive = false;

  Client(this.host, this.port, this.credentials, this.ttl) {
    channel = ClientChannel(host,
        port: port,
        options: ChannelOptions(
          credentials: credentials,
          codecRegistry:
              CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
        ));
    stub = VOxOVClient(channel);
  }

  Client.local()
      : host = 'localhost',
        port = 10001,
        credentials = const ChannelCredentials.insecure(),
        ttl = 600 as Int64;

  Future<void> shutdown() async {
    return await channel.shutdown();
  }

  Future<CreateSessionReply> createSession() async {
    try {
      return await stub.createSession(
        CreateSessionRequest()
          ..apiVersion = 1
          ..ttl = ttl,
        options: CallOptions(compression: const GzipCodec()),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
      return CreateSessionReply()
        ..apiVersion = 0
        ..token = <int>[];
    }
  }

  Future<UpdateSessionReply> updateSession() async {
    try {
      return await stub.updateSession(
        UpdateSessionRequest()
          ..token = token
          ..ttl = ttl,
        options: CallOptions(compression: const GzipCodec()),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
      return UpdateSessionReply()..ok = false;
    }
  }

  Future<void> startSession() async {
    sessionActive = true;
    final r = await createSession();
    token = r.token;
    while (sessionActive) {
      await Future.delayed(Duration(seconds: ttl.toInt() ~/ 2));
      if (!(await updateSession()).ok) {
        stopSession();
      }
    }
  }

  void stopSession() => sessionActive = false;
}
