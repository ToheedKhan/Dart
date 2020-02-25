import 'package:ImportsSample/ImportsSample.dart' as ImportsSample;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

//Imports allows you to use code from other people, and reuse your own code.
// dart public repository for packages? - pub.dartlang.org
void main(List<String> arguments) {
  print('Hello world: ${ImportsSample.calculate()}!');

  ImportsSample.sayHello();

  String myValue = 'Hello Toheed';
  List ebytes = utf8.encode(myValue);
  String encoded = base64.encode(ebytes);
  print('Encoded: ${encoded}');

  List dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print('Decoded: ${decoded}');


  //Advance

  var url = "http://www.voidrealms.com/";

  http.get(url).then((response) {
    print("Response status code: ${response.statusCode}");
    print("Response body: ${response.body}");
  });

  //Assignment:- Import the "path" package and use it to join a directory path to a filename and print out the results.
  String path = p.join("Directory","file.txt");
  print('Path is - ${path}');
}
