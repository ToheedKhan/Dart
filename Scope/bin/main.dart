import 'package:Scope/Scope.dart' as Scope;
import 'package:Scope/Animal.dart';
import 'package:Scope/Person.dart';
import 'package:Scope/StaticTest.dart';

//Scope is to protect and encapsulate variables.
//lexical scope means variables are available from the top down.

//Private variable only accessible from inside the class and its descendants.

void main(List<String> arguments) {
  print('Hello world: ${Scope.calculate()}!');

//  Animal cat = new Animal();
  Animal dog = new Animal('Bob');

  Person john = new Person('John', 22, 'Engineer');
  john.desination = 'Senior Engineer';
  john.sayHello();
john.saySomething('Hi there!');

john.name = 'John Applesse'; //setter
print(john.name); //getter

  print('Before setter -  ${john.age}'); //getter
  john.age = 25; //setter
  print('After setter -  ${john.age}'); //getter


  //Static test

  StaticTest st = new StaticTest();
  StaticTest st1 = new StaticTest();
  StaticTest st2 = new StaticTest();
  StaticTest st3 = new StaticTest();

  StaticTest.display();

}
