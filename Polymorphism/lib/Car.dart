//Abstract concept means not class but the concept
//Similar to an interface but you can actually inherit

abstract class Car {
  bool hasWheels;
  bool hasHorn;

//  void honk();

  void honk() => print('honk called in car.');
}