import 'package:AsyncProgramming/AsyncProgramming.dart' as AsyncProgramming;
import 'dart:async';

import 'dart:io';
//Async code runs at the same time in the background.
int counter = 0;
void main(List<String> arguments)  async { //Added async for await
  print('Hello world: ${AsyncProgramming.calculate()}!');

  //Funtions are objects
  //Timer is like a stop watch. It is a callback in memory, one time or periodic

  Duration duration = new Duration(seconds: 1);
  Timer timer = new Timer.periodic(duration, timeout);

  print('Started ${getTime()}');


  //Futures

  //Future is a promise of a value
  print('\n -------- Future --------- \n');

  String path = Directory.current.path + "/test.txt";

  print('Appending to ${path}');

  File file = new File(path);

  Future<RandomAccessFile> f = file.open(mode: FileMode.APPEND);
  f.then((RandomAccessFile raf) {
    print('File has been opened');
    raf.writeString('Hellow World').then((value) {
      print('File has been appended');

    }).catchError(()=> print('An error occured')).whenComplete(() => raf.close());
  });

  print('***** The end');
  //Await - Waits for the value from a Future
  print('\n -------- Await --------- \n');
//Await keyword tell asynchronous function to wait the object the Future is promising is provided and slow things down in a
  //synchronized manner.
print('Starting');

File file1 = await appendFile(); //We want file varaible. Call this function but this function is going to return Future object not the actual object.
  //Grab the future and wait for the object to be provided.

print('Using Await - appended to file ${file1.path}');
print(' Using Await - **** End');

  //Assignment

  print('\n -------- Assignment --------- \n');

  print('Assignment Starting');
  File file2 = await appendFile();
  print('Assignment - Appended to ${file2.path}');

  print(await readFile1());
  print('*** Assignment  END');
}
//Timers and callbacks
//Mouse moving accross the screen its a callback in the OS.
// Cursor flashing on the screen that's a Timer
void timeout(Timer timer) {
  print('Timeout: ${getTime()}');

  counter++;

  if(counter >= 5) timer.cancel();

}

String getTime() {
  DateTime dt = new DateTime.now();
  return dt.toString();
}

//Futures

//Await


Future<File> appendFile() {
  File file = new File(Directory.current.path + '/test1.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.APPEND);
}

//Assigment
Future<File> appendFile1() {
  File file = new File(Directory.current.path + '/test.txt');
  DateTime dt = new DateTime.now();
  return file.writeAsString(dt.toString() + '\r\n', mode: FileMode.APPEND);
}

Future<String> readFile1() {
  File file = new File(Directory.current.path + '/test.txt');

  return file.readAsString();
}