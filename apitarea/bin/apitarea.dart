import 'dart:io';
import 'package:apitarea/apitarea.dart' as apitarea;

void main(List<String> arguments) async {
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  print('>> app: on');
  print('>> app address: ${server.address}');
  print('>> app port: ${server.port}');
  apitarea.getReqResService();

  server.close();
  print('>> app: off');
}
