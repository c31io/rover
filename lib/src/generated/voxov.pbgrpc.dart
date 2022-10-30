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
  static final _$createDevice = $grpc.ClientMethod<$0.Device, $0.Device>(
      '/voxov.VOxOV/CreateDevice',
      ($0.Device value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Device.fromBuffer(value));
  static final _$readDevice = $grpc.ClientMethod<$0.Device, $0.Device>(
      '/voxov.VOxOV/ReadDevice',
      ($0.Device value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Device.fromBuffer(value));
  static final _$updateDevice = $grpc.ClientMethod<$0.Device, $0.Device>(
      '/voxov.VOxOV/UpdateDevice',
      ($0.Device value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Device.fromBuffer(value));
  static final _$deleteDevice = $grpc.ClientMethod<$0.Device, $0.Device>(
      '/voxov.VOxOV/DeleteDevice',
      ($0.Device value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Device.fromBuffer(value));
  static final _$listDevice =
      $grpc.ClientMethod<$0.ListDeviceRequest, $0.ListDeviceReply>(
          '/voxov.VOxOV/ListDevice',
          ($0.ListDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListDeviceReply.fromBuffer(value));
  static final _$authDevice =
      $grpc.ClientMethod<$0.AuthDeviceRequest, $0.AuthDeviceReply>(
          '/voxov.VOxOV/AuthDevice',
          ($0.AuthDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthDeviceReply.fromBuffer(value));

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

  $grpc.ResponseFuture<$0.Device> createDevice($0.Device request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.Device> readDevice($0.Device request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.Device> updateDevice($0.Device request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.Device> deleteDevice($0.Device request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListDeviceReply> listDevice(
      $0.ListDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDevice, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthDeviceReply> authDevice(
      $0.AuthDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authDevice, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.Device, $0.Device>(
        'CreateDevice',
        createDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Device.fromBuffer(value),
        ($0.Device value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Device, $0.Device>(
        'ReadDevice',
        readDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Device.fromBuffer(value),
        ($0.Device value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Device, $0.Device>(
        'UpdateDevice',
        updateDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Device.fromBuffer(value),
        ($0.Device value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Device, $0.Device>(
        'DeleteDevice',
        deleteDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Device.fromBuffer(value),
        ($0.Device value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListDeviceRequest, $0.ListDeviceReply>(
        'ListDevice',
        listDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListDeviceRequest.fromBuffer(value),
        ($0.ListDeviceReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthDeviceRequest, $0.AuthDeviceReply>(
        'AuthDevice',
        authDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthDeviceRequest.fromBuffer(value),
        ($0.AuthDeviceReply value) => value.writeToBuffer()));
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

  $async.Future<$0.Device> createDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Device> request) async {
    return createDevice(call, await request);
  }

  $async.Future<$0.Device> readDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Device> request) async {
    return readDevice(call, await request);
  }

  $async.Future<$0.Device> updateDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Device> request) async {
    return updateDevice(call, await request);
  }

  $async.Future<$0.Device> deleteDevice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Device> request) async {
    return deleteDevice(call, await request);
  }

  $async.Future<$0.ListDeviceReply> listDevice_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListDeviceRequest> request) async {
    return listDevice(call, await request);
  }

  $async.Future<$0.AuthDeviceReply> authDevice_Pre($grpc.ServiceCall call,
      $async.Future<$0.AuthDeviceRequest> request) async {
    return authDevice(call, await request);
  }

  $async.Future<$0.CreateSessionReply> createSession(
      $grpc.ServiceCall call, $0.CreateSessionRequest request);
  $async.Future<$0.UpdateSessionReply> updateSession(
      $grpc.ServiceCall call, $0.UpdateSessionRequest request);
  $async.Future<$0.AuthenticateReply> authenticate(
      $grpc.ServiceCall call, $0.AuthenticateRequest request);
  $async.Future<$0.WhoAmIReply> whoAmI(
      $grpc.ServiceCall call, $0.WhoAmIRequest request);
  $async.Future<$0.Device> createDevice(
      $grpc.ServiceCall call, $0.Device request);
  $async.Future<$0.Device> readDevice(
      $grpc.ServiceCall call, $0.Device request);
  $async.Future<$0.Device> updateDevice(
      $grpc.ServiceCall call, $0.Device request);
  $async.Future<$0.Device> deleteDevice(
      $grpc.ServiceCall call, $0.Device request);
  $async.Future<$0.ListDeviceReply> listDevice(
      $grpc.ServiceCall call, $0.ListDeviceRequest request);
  $async.Future<$0.AuthDeviceReply> authDevice(
      $grpc.ServiceCall call, $0.AuthDeviceRequest request);
}
