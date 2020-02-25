import 'package:Polymorphism/Bnb.dart';
import 'package:Polymorphism/Monster.dart';
import 'package:Polymorphism/Polymorphism.dart' as Polymorphism;
import 'package:Polymorphism/Feline.dart';
//Interface
import 'package:Polymorphism/Manager.dart';

//Abstraction
import 'package:Polymorphism/RaceCar.dart';

//Assignment

//Mixins - Multiple inheritance

//Interface - Is a contract between two classes

void main(List<String> arguments) {
  print('Hello world: ${Polymorphism.calculate()}!');


  Feline cat = new Feline();

  cat.breath();

  cat.test();

  //Mixins
  print('Mixins Demo....');

  Monster ugly = new Monster();
  ugly.test();

  ugly.fly();

 //Interface
 print('Interface Demo....');
  Manager bob = new Manager();
  bob.test();

  print('Abstraction Demo....');
  RaceCar rc = new RaceCar();
  rc.honk();

  print('Assignment....');
 BedAndBreakfast bnb = new BedAndBreakfast();
 bnb.ringDoorbell();
}
