import 'package:Compression/Compression.dart' as Compression;

import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print('Hello world: ${Compression.calculate()}!');

  String data = "";
  for(int i = 0; i < 100; i++) {
    data = data + 'Hellow Wrold\r\n';
  }
    //Origional Data
    List original = utf8.encode(data);

    //Compress Dta

    List compressed  = GZIP.encode(original);

    //Decompress =
    List decompress = GZIP.decode(compressed);

    print('Original ${original.length} bytes');
    print('Compressed ${compressed.length} bytes');
    print('Decompressed ${decompress.length} bytes');

    String decoded = utf8.decode(decompress);

    assert(data == decoded);
    print(decoded);

  
}
