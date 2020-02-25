import 'package:Polymorphism/Animal.dart';

class Mamal extends Animal {
  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print('Walking...');

  @override
  void test() {
    print('Testing in Mamal');
//    super.test();
  }
}