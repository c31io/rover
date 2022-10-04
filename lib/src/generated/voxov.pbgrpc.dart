///
//  Generated code. Do not modify.
//  source: voxov.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'voxov.pb.dart' as $0;
export 'voxov.pb.dart';

class VOxOVClient extends $grpc.Client {
  static final _$createSession =
      $grpc.ClientMethod<$0.CreateSessionRequest, $0.CreateSessionReply>(
          '/voxov.VOxOV/CreateSession',
          ($0.CreateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateSessionReply.fromBuffer(value));
  static final _$updateSession =
      $grpc.ClientMethod<$0.UpdateSessionRequest, $0.UpdateSessionReply>(
          '/voxov.VOxOV/UpdateSession',
          ($0.UpdateSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateSessionReply.fromBuffer(value));
  static final _$authenticate =
      $grpc.ClientMethod<$0.AuthenticateRequest, $0.AuthenticateReply>(
          '/voxov.VOxOV/Authenticate',
          ($0.AuthenticateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticateReply.fromBuffer(value));
  static final _$whoAmI = $grpc.ClientMethod<$0.WhoAmIRequest, $0.WhoAmIReply>(
      '/voxov.VOxOV/WhoAmI',
      ($0.WhoAmIRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WhoAmIReply.fromBuffer(value));
  static final _$createDevice =
      $grpc.ClientMethod<$0.CreateDeviceRequest, $0.CreateDeviceReply>(
          '/voxov.VOxOV/CreateDevice',
          ($0.CreateDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateDeviceReply.fromBuffer(value));

  VOxOVClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateSessionReply> createSession(
      $0.CreateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateSessionReply> updateSession(
      $0.UpdateSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthenticateReply> authenticate(
      $0.AuthenticateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.WhoAmIReply> whoAmI($0.WhoAmIRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$whoAmI, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateDeviceReply> createDevice(
      $0.CreateDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDevice, request, options: options);
  }
}

abstract class VOxOVServiceBase extends $grpc.Service {
  $core.String get $name => 'voxov.VOxOV';

  VOxOVServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateSessionRequest, $0.CreateSessionReply>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateSessionRequest.fromBuffer(value),
            ($0.CreateSessionReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateSessionRequest, $0.UpdateSessionReply>(
            'UpdateSession',
            updateSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateSessionRequest.fromBuffer(value),
            ($0.UpdateSessionReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AuthenticateRequest, $0.AuthenticateReply>(
            'Authenticate',
            authenticate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AuthenticateRequest.fromBuffer(value),
            ($0.AuthenticateReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WhoAmIRequest, $0.WhoAmIReply>(
        'WhoAmI',
        whoAmI_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WhoAmIRequest.fromBuffer(value),
        ($0.WhoAmIReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateDeviceRequest, $0.CreateDeviceReply>(
            'CreateDevice',
            createDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateDeviceRequest.fromBuffer(value),
            ($0.CreateDeviceReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSessionReply> createSession_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateSessionRequest> request) async {
    return createSession(call, await request);
  }

  $async.Future<$0.UpdateSessionReply> updateSession_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateSessionRequest> request) async {
    return updateSession(call, await request);
  }

  $async.Future<$0.AuthenticateReply> authenticate_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthenticateRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.WhoAmIReply> whoAmI_Pre(
      $grpc.ServiceCall call, $async.Future<$0.WhoAmIRequest> request) async {
    return whoAmI(call, await request);
  }

  $async.Future<$0.CreateDeviceReply> createDevice_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateDeviceRequest> request) async {
    return createDevice(call, await request);
  }

  $async.Future<$0.CreateSessionReply> createSession(
      $grpc.ServiceCall call, $0.CreateSessionRequest request);
  $async.Future<$0.UpdateSessionReply> updateSession(
      $grpc.ServiceCall call, $0.UpdateSessionRequest request);
  $async.Future<$0.AuthenticateReply> authenticate(
      $grpc.ServiceCall call, $0.AuthenticateRequest request);
  $async.Future<$0.WhoAmIReply> whoAmI(
      $grpc.ServiceCall call, $0.WhoAmIRequest request);
  $async.Future<$0.CreateDeviceReply> createDevice(
      $grpc.ServiceCall call, $0.CreateDeviceRequest request);
}
