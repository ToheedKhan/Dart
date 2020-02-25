import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils/buffer.dart';
//import 'package:query/query.dart';

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


  var trans = await conn.begin();
  try {

//    int id = await insert(conn, 39, 'Zazzy', 'Dart');
    int person = await find(conn, 'Jenny');
    print('Id to be deleted = ${person}');
    await delete(conn, person);

    await trans.commit();
    print('done');
  }
  catch(err) {
    print(err.toString());
    await trans.rollback();
  }
  finally {
    await conn.close();
    exit(0);
  }
}

Future<int> find(var pool, String name) async {

//  var query = await pool.prepare('select teacher_id from teacher where Name=?');
//  Results results = await query.ex([name]);
//  Row row = await results.first;
//  return row[0];

  var query = await pool.prepare('select teacher_id from teacher where name=?');
  var results = await query.execute([name]);
   int teacherId = 0;
   results.forEach((row) {
     teacherId = row[0];
    print('Id: ${teacherId}');
  });
//  Row row;
//  Iterator i = results.iterator();
//
//  while (i.moveNext()) {
//    var e = i.current;
//    print('$e');
//    if (e == 1) {
//
//      break;
//    }
//  }
return teacherId;
}

Future<int> insert(var pool, int teacherId, String name, String topic) async {
  var query = await pool.prepare('insert into teacher (teacher_id, name, topic) values (?,?,?)');
  var results = await query.execute([teacherId, name,topic]);
  return results.insertId;
}

Future delete(var pool, int value) async {
  print('Id to be deleted = ${value}');


var query = await pool.prepare('delete from teacher where teacher_id=?');
  var results = await query.execute([value]);
}