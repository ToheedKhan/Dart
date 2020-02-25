import 'package:Polymorphism/Dragon.dart';
//import 'Dragon.dart';

import 'Mamal.dart';

//class Feline extends Mamal, Dragon { //Can't do this Dart
class Feline extends Mamal {
bool hasClaws = true;

  void growl() => print('grrrrr');

  @override
  void test() {
    print('Testing in Feline');
    super.test();
  }
}