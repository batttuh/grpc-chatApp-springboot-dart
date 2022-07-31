///
//  Generated code. Do not modify.
//  source: src/main/proto/schema.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'schema.pb.dart' as $0;
export 'schema.pb.dart';

class ChatServiceClient extends $grpc.Client {
  static final _$join = $grpc.ClientMethod<$0.User, $0.JoinResponse>(
      '/com.grpc.ChatService/join',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.JoinResponse.fromBuffer(value));
  static final _$sendMsg = $grpc.ClientMethod<$0.ChatMessage, $0.Empty>(
      '/com.grpc.ChatService/sendMsg',
      ($0.ChatMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$receiveMsg = $grpc.ClientMethod<$0.Empty, $0.ChatMessage>(
      '/com.grpc.ChatService/receiveMsg',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));
  static final _$getAllUsers = $grpc.ClientMethod<$0.Empty, $0.UserList>(
      '/com.grpc.ChatService/getAllUsers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserList.fromBuffer(value));

  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.JoinResponse> join($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$join, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> sendMsg($0.ChatMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMsg, request, options: options);
  }

  $grpc.ResponseStream<$0.ChatMessage> receiveMsg($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$receiveMsg, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.UserList> getAllUsers($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllUsers, request, options: options);
  }
}

abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'com.grpc.ChatService';

  ChatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.JoinResponse>(
        'join',
        join_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.JoinResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatMessage, $0.Empty>(
        'sendMsg',
        sendMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ChatMessage>(
        'receiveMsg',
        receiveMsg_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.UserList>(
        'getAllUsers',
        getAllUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.UserList value) => value.writeToBuffer()));
  }

  $async.Future<$0.JoinResponse> join_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return join(call, await request);
  }

  $async.Future<$0.Empty> sendMsg_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ChatMessage> request) async {
    return sendMsg(call, await request);
  }

  $async.Stream<$0.ChatMessage> receiveMsg_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* receiveMsg(call, await request);
  }

  $async.Future<$0.UserList> getAllUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllUsers(call, await request);
  }

  $async.Future<$0.JoinResponse> join($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.Empty> sendMsg(
      $grpc.ServiceCall call, $0.ChatMessage request);
  $async.Stream<$0.ChatMessage> receiveMsg(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.UserList> getAllUsers(
      $grpc.ServiceCall call, $0.Empty request);
}
