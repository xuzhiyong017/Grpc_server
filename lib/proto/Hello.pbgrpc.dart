///
//  Generated code. Do not modify.
//  source: Hello.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/grpc.dart' as $grpc;
import 'Hello.pb.dart' as $0;
export 'Hello.pb.dart';

class LoginServerClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/LoginServer/login',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  LoginServerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Response> login($0.Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$login, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LoginServerServiceBase extends $grpc.Service {
  $core.String get $name => 'LoginServer';

  LoginServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Response> login($grpc.ServiceCall call, $0.Request request);
}
