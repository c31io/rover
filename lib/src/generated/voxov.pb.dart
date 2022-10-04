///
//  Generated code. Do not modify.
//  source: voxov.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class CreateSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.O3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ttl')
    ..hasRequiredFields = false
  ;

  CreateSessionRequest._() : super();
  factory CreateSessionRequest({
    $core.int? apiVersion,
    $fixnum.Int64? ttl,
  }) {
    final _result = create();
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    return _result;
  }
  factory CreateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionRequest clone() => CreateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionRequest copyWith(void Function(CreateSessionRequest) updates) => super.copyWith((message) => updates(message as CreateSessionRequest)) as CreateSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest create() => CreateSessionRequest._();
  CreateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSessionRequest> createRepeated() => $pb.PbList<CreateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionRequest>(create);
  static CreateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get apiVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set apiVersion($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiVersion() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ttl => $_getI64(1);
  @$pb.TagNumber(2)
  set ttl($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTtl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTtl() => clearField(2);
}

class CreateSessionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSessionReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'apiVersion', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CreateSessionReply._() : super();
  factory CreateSessionReply({
    $core.int? apiVersion,
    $core.List<$core.int>? token,
  }) {
    final _result = create();
    if (apiVersion != null) {
      _result.apiVersion = apiVersion;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory CreateSessionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSessionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSessionReply clone() => CreateSessionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSessionReply copyWith(void Function(CreateSessionReply) updates) => super.copyWith((message) => updates(message as CreateSessionReply)) as CreateSessionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSessionReply create() => CreateSessionReply._();
  CreateSessionReply createEmptyInstance() => create();
  static $pb.PbList<CreateSessionReply> createRepeated() => $pb.PbList<CreateSessionReply>();
  @$core.pragma('dart2js:noInline')
  static CreateSessionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSessionReply>(create);
  static CreateSessionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get apiVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set apiVersion($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get token => $_getN(1);
  @$pb.TagNumber(2)
  set token($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class UpdateSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ttl')
    ..hasRequiredFields = false
  ;

  UpdateSessionRequest._() : super();
  factory UpdateSessionRequest({
    $core.List<$core.int>? token,
    $fixnum.Int64? ttl,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (ttl != null) {
      _result.ttl = ttl;
    }
    return _result;
  }
  factory UpdateSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionRequest clone() => UpdateSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionRequest copyWith(void Function(UpdateSessionRequest) updates) => super.copyWith((message) => updates(message as UpdateSessionRequest)) as UpdateSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSessionRequest create() => UpdateSessionRequest._();
  UpdateSessionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionRequest> createRepeated() => $pb.PbList<UpdateSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionRequest>(create);
  static UpdateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ttl => $_getI64(1);
  @$pb.TagNumber(2)
  set ttl($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTtl() => $_has(1);
  @$pb.TagNumber(2)
  void clearTtl() => clearField(2);
}

class UpdateSessionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSessionReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ok')
    ..hasRequiredFields = false
  ;

  UpdateSessionReply._() : super();
  factory UpdateSessionReply({
    $core.bool? ok,
  }) {
    final _result = create();
    if (ok != null) {
      _result.ok = ok;
    }
    return _result;
  }
  factory UpdateSessionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSessionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSessionReply clone() => UpdateSessionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSessionReply copyWith(void Function(UpdateSessionReply) updates) => super.copyWith((message) => updates(message as UpdateSessionReply)) as UpdateSessionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSessionReply create() => UpdateSessionReply._();
  UpdateSessionReply createEmptyInstance() => create();
  static $pb.PbList<UpdateSessionReply> createRepeated() => $pb.PbList<UpdateSessionReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateSessionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSessionReply>(create);
  static UpdateSessionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);
}

class AuthenticateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AuthenticateRequest._() : super();
  factory AuthenticateRequest({
    $core.List<$core.int>? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory AuthenticateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateRequest clone() => AuthenticateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateRequest copyWith(void Function(AuthenticateRequest) updates) => super.copyWith((message) => updates(message as AuthenticateRequest)) as AuthenticateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest create() => AuthenticateRequest._();
  AuthenticateRequest createEmptyInstance() => create();
  static $pb.PbList<AuthenticateRequest> createRepeated() => $pb.PbList<AuthenticateRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateRequest>(create);
  static AuthenticateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class AuthenticateReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthenticateReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tel')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  AuthenticateReply._() : super();
  factory AuthenticateReply({
    $core.String? tel,
    $core.String? msg,
  }) {
    final _result = create();
    if (tel != null) {
      _result.tel = tel;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory AuthenticateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthenticateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthenticateReply clone() => AuthenticateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthenticateReply copyWith(void Function(AuthenticateReply) updates) => super.copyWith((message) => updates(message as AuthenticateReply)) as AuthenticateReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthenticateReply create() => AuthenticateReply._();
  AuthenticateReply createEmptyInstance() => create();
  static $pb.PbList<AuthenticateReply> createRepeated() => $pb.PbList<AuthenticateReply>();
  @$core.pragma('dart2js:noInline')
  static AuthenticateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthenticateReply>(create);
  static AuthenticateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tel => $_getSZ(0);
  @$pb.TagNumber(1)
  set tel($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTel() => $_has(0);
  @$pb.TagNumber(1)
  void clearTel() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class WhoAmIRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WhoAmIRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tel')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  WhoAmIRequest._() : super();
  factory WhoAmIRequest({
    $core.List<$core.int>? token,
    $core.String? tel,
    $core.String? msg,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (tel != null) {
      _result.tel = tel;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory WhoAmIRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WhoAmIRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WhoAmIRequest clone() => WhoAmIRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WhoAmIRequest copyWith(void Function(WhoAmIRequest) updates) => super.copyWith((message) => updates(message as WhoAmIRequest)) as WhoAmIRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WhoAmIRequest create() => WhoAmIRequest._();
  WhoAmIRequest createEmptyInstance() => create();
  static $pb.PbList<WhoAmIRequest> createRepeated() => $pb.PbList<WhoAmIRequest>();
  @$core.pragma('dart2js:noInline')
  static WhoAmIRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WhoAmIRequest>(create);
  static WhoAmIRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tel => $_getSZ(1);
  @$pb.TagNumber(2)
  set tel($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTel() => $_has(1);
  @$pb.TagNumber(2)
  void clearTel() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get msg => $_getSZ(2);
  @$pb.TagNumber(3)
  set msg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);
  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);
}

class WhoAmIReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WhoAmIReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'person')
    ..hasRequiredFields = false
  ;

  WhoAmIReply._() : super();
  factory WhoAmIReply({
    $fixnum.Int64? person,
  }) {
    final _result = create();
    if (person != null) {
      _result.person = person;
    }
    return _result;
  }
  factory WhoAmIReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WhoAmIReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WhoAmIReply clone() => WhoAmIReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WhoAmIReply copyWith(void Function(WhoAmIReply) updates) => super.copyWith((message) => updates(message as WhoAmIReply)) as WhoAmIReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WhoAmIReply create() => WhoAmIReply._();
  WhoAmIReply createEmptyInstance() => create();
  static $pb.PbList<WhoAmIReply> createRepeated() => $pb.PbList<WhoAmIReply>();
  @$core.pragma('dart2js:noInline')
  static WhoAmIReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WhoAmIReply>(create);
  static WhoAmIReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get person => $_getI64(0);
  @$pb.TagNumber(1)
  set person($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPerson() => $_has(0);
  @$pb.TagNumber(1)
  void clearPerson() => clearField(1);
}

class CreateDeviceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateDeviceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dtoken', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info')
    ..hasRequiredFields = false
  ;

  CreateDeviceRequest._() : super();
  factory CreateDeviceRequest({
    $core.List<$core.int>? token,
    $core.List<$core.int>? dtoken,
    $core.String? name,
    $core.String? info,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (dtoken != null) {
      _result.dtoken = dtoken;
    }
    if (name != null) {
      _result.name = name;
    }
    if (info != null) {
      _result.info = info;
    }
    return _result;
  }
  factory CreateDeviceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceRequest clone() => CreateDeviceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceRequest copyWith(void Function(CreateDeviceRequest) updates) => super.copyWith((message) => updates(message as CreateDeviceRequest)) as CreateDeviceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateDeviceRequest create() => CreateDeviceRequest._();
  CreateDeviceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceRequest> createRepeated() => $pb.PbList<CreateDeviceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceRequest>(create);
  static CreateDeviceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dtoken => $_getN(1);
  @$pb.TagNumber(2)
  set dtoken($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDtoken() => $_has(1);
  @$pb.TagNumber(2)
  void clearDtoken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get info => $_getSZ(3);
  @$pb.TagNumber(4)
  set info($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearInfo() => clearField(4);
}

class CreateDeviceReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateDeviceReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'voxov'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ok')
    ..hasRequiredFields = false
  ;

  CreateDeviceReply._() : super();
  factory CreateDeviceReply({
    $core.bool? ok,
  }) {
    final _result = create();
    if (ok != null) {
      _result.ok = ok;
    }
    return _result;
  }
  factory CreateDeviceReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDeviceReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDeviceReply clone() => CreateDeviceReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDeviceReply copyWith(void Function(CreateDeviceReply) updates) => super.copyWith((message) => updates(message as CreateDeviceReply)) as CreateDeviceReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateDeviceReply create() => CreateDeviceReply._();
  CreateDeviceReply createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceReply> createRepeated() => $pb.PbList<CreateDeviceReply>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDeviceReply>(create);
  static CreateDeviceReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get ok => $_getBF(0);
  @$pb.TagNumber(1)
  set ok($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOk() => $_has(0);
  @$pb.TagNumber(1)
  void clearOk() => clearField(1);
}

