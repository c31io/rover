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
    const {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
    const {'1': 'ttl', '3': 2, '4': 1, '5': 3, '10': 'ttl'},
  ],
};

/// Descriptor for `UpdateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSessionRequestDescriptor = $convert.base64Decode('ChRVcGRhdGVTZXNzaW9uUmVxdWVzdBIUCgV0b2tlbhgBIAEoDFIFdG9rZW4SEAoDdHRsGAIgASgDUgN0dGw=');
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
    const {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
    const {'1': 'tel', '3': 2, '4': 1, '5': 9, '10': 'tel'},
    const {'1': 'msg', '3': 3, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `WhoAmIRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whoAmIRequestDescriptor = $convert.base64Decode('Cg1XaG9BbUlSZXF1ZXN0EhQKBXRva2VuGAEgASgMUgV0b2tlbhIQCgN0ZWwYAiABKAlSA3RlbBIQCgNtc2cYAyABKAlSA21zZw==');
@$core.Deprecated('Use whoAmIReplyDescriptor instead')
const WhoAmIReply$json = const {
  '1': 'WhoAmIReply',
  '2': const [
    const {'1': 'person', '3': 1, '4': 1, '5': 3, '10': 'person'},
  ],
};

/// Descriptor for `WhoAmIReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whoAmIReplyDescriptor = $convert.base64Decode('CgtXaG9BbUlSZXBseRIWCgZwZXJzb24YASABKANSBnBlcnNvbg==');
@$core.Deprecated('Use createDeviceRequestDescriptor instead')
const CreateDeviceRequest$json = const {
  '1': 'CreateDeviceRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 12, '10': 'token'},
    const {'1': 'dtoken', '3': 2, '4': 1, '5': 12, '10': 'dtoken'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'info', '3': 4, '4': 1, '5': 9, '10': 'info'},
  ],
};

/// Descriptor for `CreateDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceRequestDescriptor = $convert.base64Decode('ChNDcmVhdGVEZXZpY2VSZXF1ZXN0EhQKBXRva2VuGAEgASgMUgV0b2tlbhIWCgZkdG9rZW4YAiABKAxSBmR0b2tlbhISCgRuYW1lGAMgASgJUgRuYW1lEhIKBGluZm8YBCABKAlSBGluZm8=');
@$core.Deprecated('Use createDeviceReplyDescriptor instead')
const CreateDeviceReply$json = const {
  '1': 'CreateDeviceReply',
  '2': const [
    const {'1': 'ok', '3': 1, '4': 1, '5': 8, '10': 'ok'},
  ],
};

/// Descriptor for `CreateDeviceReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDeviceReplyDescriptor = $convert.base64Decode('ChFDcmVhdGVEZXZpY2VSZXBseRIOCgJvaxgBIAEoCFICb2s=');
