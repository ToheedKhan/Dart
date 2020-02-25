import 'Feline.dart';
import 'Dragon.dart';
import 'Ghost.dart';
//For mixins the class which is getting inherited after with should not extends any other class
class Monster extends Feline with Dragon, Ghost {
//  class Monster extends Feline with Ghost, Dragon {

  bool glowInDark = true;

  @override
  void test() {
  print('Test called a Monster');
  super.test();
  }

}