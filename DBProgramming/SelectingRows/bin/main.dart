import 'dart:io';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils/buffer.dart';
//import 'package:sqljocky5/utils.dart';

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
  readData(conn);
//Close connection
  await conn.close();
}

Future<void> readData(MySqlConnection conn) async {
  Results result = await (await conn
      .execute('SELECT * from teacher'))
      .deStream();
  print('${result} \n');
  result.forEach((record) {
    print('${record} \n');
  });
  print(result.map((r) => r.byName('name')));

//  print('Results ${await result.length} rows');
}