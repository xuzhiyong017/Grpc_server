import 'package:LoginServer/proto/Hello.pbgrpc.dart';
import 'package:LoginServer/proto/helloworld.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';

class LoginServer extends LoginServerServiceBase{
  @override
  Future<Response> login(ServiceCall call, Request request)  async{
    print('login info ${request.toString()}');
    return Response()..message = 'welcome ${request.username} ,your age ${request.age}';
  }
}

class GreetServer extends GreeterServiceBase{
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async{
    return HelloReply()..message = 'hello welcome';
  }

}