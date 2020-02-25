import 'dart:io';

main(List<String> arguments) async {

  var socket = await Socket.connect('127.0.0.1', 3000);
  print('Connected');
  socket.write('Hello World');
  print('Sent, closing');
  await socket.close();
  print('Closed');
  exit(0);

}

//Send in not async, and send is usually fast and return quickly whereas close can actually can s=take some time.