import 'package:LoginServer/proto/Hello.pb.dart';
import 'package:LoginServer/proto/Hello.pbgrpc.dart';
import 'package:grpc/src/server/call.dart';
import 'package:protobuf/protobuf.dart';

class LoginServer extends LoginServerServiceBase{
  @override
  Future<Response> login(ServiceCall call, Request request)  async{
    print('login info ${request.toString()}');
    return Response()..message = 'welcome ${request.username} ,your age ${request.age}';
  }

  @override
  Future<Response> loginout(ServiceCall call, Request request) {
    // TODO: implement loginout
    throw UnimplementedError();
  }

}
