/*
Download a web page using HTTP Get and display the length.

Questions for this assignment

Which is faster, TCP or UDP?
While they both transfer data at the same speeds, TCP has a
three way handshake during the connection that makes it slightly slower but more stable.

TCP has a 3 way hand shake because it builds a connection.

UDP has no connection because it is meant for fast but unverified data transfer.

A socket listens for socket connections
 */

import 'package:http/http.dart' as http;

main(List<String> arguments) async {

 var url = 'http://www.voidrealms.com';
 var response = await http.get(url);
 print('Length: ${response.body.length}');

}