import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {

  var data = 'Hello World';

  List<int> dataToSend = utf8.encode(data); //datagram
  int port = 3000;

  //Server
  RawDatagramSocket.bind(InternetAddress.LOOPBACK_IP_V4, port).then((RawDatagramSocket udpSocket){
    udpSocket.listen((RawSocketEvent event) {
      if(event == RawSocketEvent.READ) {
        Datagram dg = udpSocket.receive();
        print(utf8.decode(dg.data));
      }
    });


    //client
    udpSocket.send(dataToSend, InternetAddress.LOOPBACK_IP_V4, port);
    print('Sent!');
  });
}