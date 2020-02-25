import 'Car.dart';
class RaceCar extends Car {
  RaceCar() {
    this.hasHorn = true;
    this.hasWheels = true;
  }
//  void honk() => print('Beep beep');
void honk() {
    print('honk in racecar');
    super.honk();
}
}