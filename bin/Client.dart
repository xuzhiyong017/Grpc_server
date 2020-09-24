
import 'package:LoginServer/proto/Hello.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> arguments) async{

  final channel = ClientChannel('192.168.50.164',port: 50051
  ,options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
  var stub = LoginServerClient(channel);

  try{
    var response = await stub.login(Request()..username = "xu"..age = 20);
    print('result ${response.message}');
  }catch(e){
    print('Caught error: $e');
  }
  await channel.shutdown();
}
