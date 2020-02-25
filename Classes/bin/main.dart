import 'package:Classes/Classes.dart' as Classes;
import 'package:Classes/MyClass.dart';
import 'package:Classes/Animal.dart';
import 'package:Classes/Dog.dart';
void main(List<String> arguments) {
  print('Hello world: ${Classes.calculate()}!');



  MyClass mine = new MyClass();
  mine.sayhello('Toheed');


//  Animal cat = new Animal();
  Animal cat = new Animal('Bob');
  cat.sayHello();

  Dog bob = new Dog(6, 'Bob');
  print('${bob.name} is ${bob.ageInDogYears()} dog years old ');
}
