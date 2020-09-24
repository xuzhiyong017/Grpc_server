
import 'package:grpc/grpc.dart';

import 'login.dart';

Future<void> main(List<String> arguments) async{
  print("start server");

  final server = Server([LoginServer()]);
  await server.serve(port: 50051);
  print('Server listener on port ${server.port}...');
}
