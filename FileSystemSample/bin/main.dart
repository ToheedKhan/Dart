import 'dart:io';

import 'package:FileSystemSample/FileSystemSample.dart' as FileSystemSample;
//We use files for long term data storage
//Directory Class - Class that lets you create and delete directories and list contents.
//File class - Class that lets you open and close files.
void main(List<String> arguments) {
  print('Hello world: ${FileSystemSample.calculate()}!');
//'C:\';
  String path = '/';
  Directory dir = new Directory(path);
  if(dir.existsSync()) {
    print('exists');
  } else {
    print('not found');
  }

  //System temp directory
  print('\n System temp directory............');
  Directory dir1 = Directory.systemTemp.createTempSync();
  print(dir1.path);
  if(dir1.existsSync()) {
    print('Removing ${dir1.path}');
    dir1.deleteSync();
  } else {
    print('Could not find ${dir1.path}');
  }

  //3. Listing items in Directories
  print('\n Listing items in Directories............');

  Directory currentDir = Directory.current;
  print('Current Directory is: ${currentDir.path}');

  List<FileSystemEntity> list = currentDir.listSync(recursive: true);
  print('Entries in list: ${list.length}');

  list.forEach((FileSystemEntity value) {
    FileStat stat = value.statSync();

    print('Path: ${value.path }');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('size: ${stat.size}');
    print('');

  });

  //4. Accessing Files
  print('\n Accessing File............');

  Directory accDir = Directory.current;
  print(accDir.path);

  File file = new File(accDir.path + '/myfile.txt');

  writeFile(file);
  readFile(file);

  //Assignment
  print('\n Assignment ............');

  Directory dir2 = Directory.current;
  File file1 = new File(dir2.path + '/myfile1.txt');

  file1.writeAsStringSync('Hello World');
  print(file1.readAsStringSync());

  file1.deleteSync();
}

void writeFile(File file) {
  //append, write
  RandomAccessFile raf = file.openSync(mode: FileMode.APPEND);
  raf.writeStringSync('Hello world! \r\nHow are you today?\n');
  raf.flushSync(); //really not needed bcz close calls flush in the background. File access workd with the buffer. A buffer is just a
  //static, a little memory. When you put informsation infto the file, It may not get written onto the disk immediately. Therefore you
  //have to flush it down.
  raf.closeSync();
}

void readFile(File file) {
  if(!file.existsSync()) {
    print('file not found');
    return;
  }
  print('Reading string... ');
  print(file.readAsStringSync());

  print('Reading bytes... ');
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));
}
