import 'package:Dart/Dart.dart' as Dart;
import 'dart:async';
import 'dart:io';

void main(List<String> arguments) {
  print('Hello world: ${Dart.calculate()}!');
  print('\r My name is Toheed \r\n');
  print('My Last name is Khan');
  //UserInput
  readInputFromUser();
}
//UserInput
void readInputFromUser() {
  print('What is your first name?');
//  stdout.write('What is your first name?');
  String firstname = stdin.readLineSync();


  print('What is your last name?');
  String lastname = stdin.readLineSync();

//  print('Hello ${firstname} ${lastname}');

  firstname.isEmpty && lastname.isEmpty ? stderr.write('First and last Name are empty') : print('Hello ${firstname} ${lastname}');

}