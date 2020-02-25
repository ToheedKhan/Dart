import 'dart:io';
import 'package:Functions/Functions.dart' as Functions;

void main(List<String> arguments) {
  print('Hello world: ${Functions.calculate()}!');
  sayHello();
  sayHello('Toheed');


  download('myText1.text');
  download('myTest2.txt', true);

//  int footage = squareFeet(3, 4); //Error
//  print('Footage is ${footage}');

  int footage2 = squareFeet(width: 10, length: 20);
//  int footage2 = squareFeet(length: 10, width: 20);


  print('Footage2 is ${footage2}');


  download2('newFile.txt');
  download2('newFile2.txt', port: 90);

  int age = 7;
  var dogYears = calcYears;
  var catYears = calcYears;
  
  print('Dog age is ${dogYears(age: 43, multiplier: 7)}');
  print('Cat age is ${catYears(age: 40, multiplier: 2)}');

  displayResult(askUser());

//Anonymous Function

  (){ print('Hello');};

  List people = ['John', 'Adam', 'Marry'];

  people.forEach(print);

  print('.............');

  people.forEach((element) => print(element));
  print('See----');
 // people.forEach((String name){ //Not working
  people.forEach((name){
    print(name);
  });
  print('.............');

//  people.where((String name) {
  people.where((name) {
    switch(name) {
      case 'John':
        return true;
      case 'Adam':
        return false;
      case 'Marry':
        return true;
    }
  }).forEach(print);

  List languages = new List();
  languages.add('Perl');
  languages.add('Python');
  languages.add('Dart');
  print(languages);    // [Perl, Python, Dart]

  List short = languages.where((l) => l.length < 5).toList();
  print(short);        // [Perl, Dart]
}

//Optional Paramters
//void sayHello(String name) {

//void sayHello([String name = '']) {
//  print('Hello ${name}');
//}

void sayHello([String name = '']) {
  if (name.isNotEmpty) name = name.padLeft(name.length + 10);
  print('Hello${name}');
}

void download(String file, [bool isOpen = false]) {
  print('Downloading ${file}');
  if (isOpen) print('Opening ${file}');
}

//Named Parameters

int squareFeet({int length, int width}) {
  return length * width;
}


void download2(String file, {int port: 80}) {
  print('Downloading ${file} on Port  ${port}');
}

//Function as object

int calcYears({int age, int multiplier}) {
  return age * multiplier;
}
//Anonymous Functions



int askUser() {
  print('Please enter a number');
  return int.parse(stdin.readLineSync(), onError: (String err) {
    print('Error entering a number ${err}');
    return 0;
  });
}

void displayResult(int max) {
  double half = max / 2;

  for(int i = 1; i < max + 1; i++) {
    print(i);
    if(i == half.round()) print('Half way there');
  }
}