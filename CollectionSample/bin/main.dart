import 'dart:collection';

import 'package:CollectionSample/CollectionSample.dart' as CollectionSample;
import 'dart:io';
import 'dart:async';

void main(List<String> arguments) {
  print('Hello world: ${CollectionSample.calculate()}!');

  List people = ['Bryan', 'Heather', 'Chris'];
  print('Enter the index');
  int index = int.parse(stdin.readLineSync());
  print(people.elementAt(index));


  //Map Practice
  //Map people1 = {'Son' : 'David', "Daughter" : 'Maya', 'Wife' : 'Marry', "Dad" : 'Bryan'};

  Map<String, String> people1 = new Map<String, String>();

  people1.putIfAbsent('Dad', () => 'Bryan');
  people1.putIfAbsent('Daughter', () => 'Maya');
  people1.putIfAbsent('Wife', () => 'Marry');
//  people1.putIfAbsent('Son', () => 'David');


  print(people1);
  print('Values are: ${people1.values}\n');
  print('Keys are: ${people1.keys}\n');
  print('Son is : ${people1['Son']}');

  //Queue is ordered, no index, Elements can be added or removed from start and end.

  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  print(items);
  items.removeFirst();
  items.removeLast();
  print(items);

  //Set =  unordered and don't contain the duplicates
  Set<int> numbers = new Set<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(1);
  print('Set - ${numbers}');

  //List

  List test = [1, 2, 3, 4];
  print('Lenght = ${test.length}');
  print('First item is - ${test[0]}');
  print(test.elementAt(2));

  List things = new List();
  things.add(1);
  things.add(true);
  things.add(1.0);
  things.add(2);
  things.add('Hi');

  print('List things - ${things}');

  List<int> numbers1 = new List<int>();
  numbers1.add(1);
  numbers1.add(2);
  //numbers1.add('e');








}
