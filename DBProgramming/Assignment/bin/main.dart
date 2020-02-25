
/*

Where does SqlJocky not work?
Websites

Why use DB?
Its a structured storage that can be searched and manipulated even across a network.

We should use transactions to ensure all the queries are executed without error, and allows you to undo your changes.

Prepared statement formats the query for use.
 */

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

  var query = await conn.prepare('insert into student (rollNo, name) values (?, ?)');
  await insert(query, 7, 'Marc');
  await insert(query, 8, 'Chad');
  await insert(query, 9, 'Stacy');
  await insert(query, 10, 'Peter');

  conn.close();
  exit(0);

}

void insert(var query, int rollNo, String name) async {
  var result = await query.execute([rollNo, name]);
  print('New student ID: ${result.insertId}');
}
