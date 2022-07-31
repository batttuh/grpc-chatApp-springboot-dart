///
//  Generated code. Do not modify.
//  source: src/main/proto/schema.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = const {
  '1': 'ChatMessage',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'time', '3': 3, '4': 1, '5': 9, '10': 'time'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode('CgtDaGF0TWVzc2FnZRISCgRmcm9tGAEgASgJUgRmcm9tEhAKA21zZxgCIAEoCVIDbXNnEhIKBHRpbWUYAyABKAlSBHRpbWU=');
@$core.Deprecated('Use userListDescriptor instead')
const UserList$json = const {
  '1': 'UserList',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.com.grpc.User', '10': 'users'},
  ],
};

/// Descriptor for `UserList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListDescriptor = $convert.base64Decode('CghVc2VyTGlzdBIkCgV1c2VycxgBIAMoCzIOLmNvbS5ncnBjLlVzZXJSBXVzZXJz');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use joinResponseDescriptor instead')
const JoinResponse$json = const {
  '1': 'JoinResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 5, '10': 'error'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `JoinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinResponseDescriptor = $convert.base64Decode('CgxKb2luUmVzcG9uc2USFAoFZXJyb3IYASABKAVSBWVycm9yEhAKA21zZxgCIAEoCVIDbXNn');
@$core.Deprecated('Use receiveMsgRequestDescriptor instead')
const ReceiveMsgRequest$json = const {
  '1': 'ReceiveMsgRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `ReceiveMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiveMsgRequestDescriptor = $convert.base64Decode('ChFSZWNlaXZlTXNnUmVxdWVzdBISCgR1c2VyGAEgASgJUgR1c2Vy');
