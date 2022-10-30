///
//  Generated code. Do not modify.
//  source: voxov.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createSessionRequestDescriptor instead')
const CreateSessionRequest$json = const {
  '1': 'CreateSessionRequest',
  '2': const [
    const {'1': 'api_version', '3': 1, '4': 1, '5': 5, '10': 'apiVersion'},
    const {'1': 'ttl', '3': 2, '4': 1, '5': 3, '10': 'ttl'},
  ],
};

/// Descriptor for `CreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionRequestDescriptor = $convert.base64Decode('ChRDcmVhdGVTZXNzaW9uUmVxdWVzdBIfCgthcGlfdmVyc2lvbhgBIAEoBVIKYXBpVmVyc2lvbhIQCgN0dGwYAiABKANSA3R0bA==');
@$core.Deprecated('Use createSessionReplyDescriptor instead')
const CreateSessionReply$json = const {
  '1': 'CreateSessionReply',
  '2': const [
    const {'1': 'api_version', '3': 1, '4': 1, '5': 5, '10': 'apiVersion'},
    const {'1': 'token', '3': 2, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `CreateSessionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSessionReplyDescriptor = $convert.base64Decode('ChJDcmVhdGVTZXNzaW9uUmVwbHkSHwoLYXBpX3ZlcnNpb24YASABKAVSCmFwaVZlcnNpb24SFAoFdG9rZW4YAiABKAxSBXRva2Vu');
@$core.Deprecated('Use updateSessionRequestDescriptor instead')
const UpdateSessionRequest$json = const {
  '1': 'UpdateSessionRequest',
  '2': const [
    const {'1': 'ttl', '3': 1, '4': 1, '5': 3, '10': 'ttl'},
    const {'1': 'token', '3': 2, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `UpdateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVTZXNzaW9uUmVxdWVzdBIQCgN0dGwYASABKANSA3R0bBIUCgV0b2tlbhgCIAEoDFIFdG9rZW4=');
@$core.Deprecated('Use updateSessionReplyDescriptor instead')
const UpdateSessionReply$json = const {
  '1': 'UpdateSessionReply',
  '2': const [
    const {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
  ],
};

/// Descriptor for `UpdateSessionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionReplyDescriptor = $convert.base64Decode('ChJVcGRhdGVTZXNzaW9uUmVwbHkSDgoCb2sYASABKAhSAm9r');
@$core.Deprecated('Use authenticateRequestDescriptor instead')
const AuthenticateRequest$json = const {
  '1': 'AuthenticateRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `AuthenticateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateRequestDescriptor = $convert.base64Decode('ChNBdXRoZW50aWNhdGVSZXF1ZXN0EhQKBXRva2VuGAEgASgMUgV0b2tlbg==');
@$core.Deprecated('Use authenticateReplyDescriptor instead')
const AuthenticateReply$json = const {
  '1': 'AuthenticateReply',
  '2': const [
    const {'1': 'tel', '3': 1, '4': 1, '5': 9, '10': 'tel'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `AuthenticateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticateReplyDescriptor = $convert.base64Decode('ChFBdXRoZW50aWNhdGVSZXBseRIQCgN0ZWwYASABKAlSA3RlbBIQCgNtc2cYAiABKAlSA21zZw==');
@$core.Deprecated('Use whoAmIRequestDescriptor instead')
const WhoAmIRequest$json = const {
  '1': 'WhoAmIRequest',
  '2': const [
    const {'1': 'tel', '3': 1, '4': 1, '5': 9, '10': 'tel'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'token', '3': 3, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `WhoAmIRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whoAmIRequestDescriptor = $convert.base64Decode('Cg1XaG9BbUlSZXF1ZXN0EhAKA3RlbBgBIAEoCVIDdGVsEhAKA21zZxgCIAEoCVIDbXNnEhQKBXRva2VuGAMgASgMUgV0b2tlbg==');
@$core.Deprecated('Use whoAmIReplyDescriptor instead')
const WhoAmIReply$json = const {
  '1': 'WhoAmIReply',
  '2': const [
    const {'1': 'person', '3': 1, '4': 1, '5': 3, '10': 'person'},
  ],
};

/// Descriptor for `WhoAmIReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whoAmIReplyDescriptor = $convert.base64Decode('CgtXaG9BbUlSZXBseRIWCgZwZXJzb24YASABKANSBnBlcnNvbg==');
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 3, '10': 'did'},
    const {'1': 'dtoken', '3': 2, '4': 1, '5': 12, '10': 'dtoken'},
    const {'1': 'dname', '3': 3, '4': 1, '5': 9, '10': 'dname'},
    const {'1': 'dinfo', '3': 4, '4': 1, '5': 9, '10': 'dinfo'},
    const {'1': 'pid', '3': 5, '4': 1, '5': 3, '10': 'pid'},
    const {'1': 'created', '3': 6, '4': 1, '5': 3, '10': 'created'},
    const {'1': 'last_in', '3': 7, '4': 1, '5': 3, '10': 'lastIn'},
    const {'1': 'token', '3': 8, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USEAoDZGlkGAEgASgDUgNkaWQSFgoGZHRva2VuGAIgASgMUgZkdG9rZW4SFAoFZG5hbWUYAyABKAlSBWRuYW1lEhQKBWRpbmZvGAQgASgJUgVkaW5mbxIQCgNwaWQYBSABKANSA3BpZBIYCgdjcmVhdGVkGAYgASgDUgdjcmVhdGVkEhcKB2xhc3RfaW4YByABKANSBmxhc3RJbhIUCgV0b2tlbhgIIAEoDFIFdG9rZW4=');
@$core.Deprecated('Use listDeviceRequestDescriptor instead')
const ListDeviceRequest$json = const {
  '1': 'ListDeviceRequest',
  '2': const [
    const {'1': 'token', '3': 8, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `ListDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceRequestDescriptor = $convert.base64Decode('ChFMaXN0RGV2aWNlUmVxdWVzdBIUCgV0b2tlbhgIIAEoDFIFdG9rZW4=');
@$core.Deprecated('Use listDeviceReplyDescriptor instead')
const ListDeviceReply$json = const {
  '1': 'ListDeviceReply',
  '2': const [
    const {'1': 'devices', '3': 1, '4': 3, '5': 11, '6': '.voxov.Device', '10': 'devices'},
  ],
};

/// Descriptor for `ListDeviceReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceReplyDescriptor = $convert.base64Decode('Cg9MaXN0RGV2aWNlUmVwbHkSJwoHZGV2aWNlcxgBIAMoCzINLnZveG92LkRldmljZVIHZGV2aWNlcw==');
@$core.Deprecated('Use authDeviceRequestDescriptor instead')
const AuthDeviceRequest$json = const {
  '1': 'AuthDeviceRequest',
  '2': const [
    const {'1': 'dtoken', '3': 1, '4': 1, '5': 12, '10': 'dtoken'},
    const {'1': 'token', '3': 2, '4': 1, '5': 12, '10': 'token'},
  ],
};

/// Descriptor for `AuthDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDeviceRequestDescriptor = $convert.base64Decode('ChFBdXRoRGV2aWNlUmVxdWVzdBIWCgZkdG9rZW4YASABKAxSBmR0b2tlbhIUCgV0b2tlbhgCIAEoDFIFdG9rZW4=');
@$core.Deprecated('Use authDeviceReplyDescriptor instead')
const AuthDeviceReply$json = const {
  '1': 'AuthDeviceReply',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 3, '10': 'did'},
    const {'1': 'pid', '3': 2, '4': 1, '5': 3, '10': 'pid'},
  ],
};

/// Descriptor for `AuthDeviceReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDeviceReplyDescriptor = $convert.base64Decode('Cg9BdXRoRGV2aWNlUmVwbHkSEAoDZGlkGAEgASgDUgNkaWQSEAoDcGlkGAIgASgDUgNwaWQ=');
