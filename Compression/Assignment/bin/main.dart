import 'dart:io';
import 'dart:convert';

//Compression is taking data ans reducing the amount of space it takes up.
//GZip is a compression algorithm
//ZLIB is slower than GZIP because it compresses at a better ratio.
//Archive package allows you to work with different compression formats.
//Using compression data takes less room in transmission and storage

main(List<String> arguments) {

  String compressed = Directory.current.path + '/compressed.txt';

  File file = new File(compressed);
  file.createSync();
  file.writeAsBytesSync(GZIP.encode(utf8.encode('Hello World')));

  print(utf8.decode(GZIP.decode(file.readAsBytesSync())));
}
