import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils/buffer.dart';

main(List<String> arguments) async {

  var s = ConnectionSettings(
    user: "root",
    password: "Abcd123?",
    host: "localhost",
    port: 3306,
    db: "school",
  );

// create a connection
  print("Opening connection ...");
  var conn = await MySqlConnection.connect(s);
  print("Opened connection!");

  var results = await conn.execute('select name, topic from teacher');
//  StreamedResults results1 = await conn.execute('select name, topic from teacher');
  await results.forEach((row) {
//    print('Name: ${row[0]}, Topic: ${row.topic}'); //name or index
    print('Name: ${row[0]}, Topic: ${row[1]}'); //name or index

   print('This is by column name => Name: ${row.byName("name")}, Topic: ${row.byName("topic")}');


  });

//  print("This is result 1");
//   results1.forEach((Row row) {
//    // Access columns by index
//    print('Name: ${row[0]}, email: ${row[1]}');
//    // Access columns by name
////    print('Name: ${row.name}, email: ${row.email}');
//
//    String name = "name";
//    print('${row.byName(name)}');
//  });


  conn.close();
  exit(0);
}