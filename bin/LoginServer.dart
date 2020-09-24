import 'package:LoginServer/proto/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import 'login.dart';

Future<void> main(List<String> arguments) async{
  print("start server");

  final server = Server([LoginServer(),GreetServer()]);
  await server.serve(port: 50051);
  print('Server listener on port ${server.port}...');
}
