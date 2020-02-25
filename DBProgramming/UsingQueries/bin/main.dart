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
//  conn.preparedWithAll(sql, values)
//  conn.prepared(sql, values)
//  conn.prepare(sql)
var query = await conn.prepare('insert into teacher (teacher_id, name,topic) values (?,?,?)');
//
await insert(query, 33, 'Jockey', 'C');
//await insert(query, 'Mary', 'Shop');
////insert(query, name, topic)


//  await insertRows(conn);

  await conn.prepared('insert into teacher (teacher_id, name,topic) values (?,?,?)',
      [34, 'Bob', 'C++']);


//Close connection
  await conn.close();

  print("Connection closed!");

}

Future<void> insertRows(MySqlConnection conn) async {
  List<StreamedResults> r2 = await (await conn.preparedWithAll(
      "INSERT INTO teacher (teacher_id, name,topic) VALUES (?, ?, ?)", [
    [29, "Bob", "Database"],
    [30, "Mary", "Shop"],

  ])).toList();

//  print("teacher table insert ids: " + r2.map((r) => r.insertId).toString());
  print("Rows inserted!");

}

void insert(var query, int id, String name, String topic) async {
  var result = await query.execute([id, name,topic]);
//  print('New user id = ${result.insertId}'); It will work only in case of auto increment
}
