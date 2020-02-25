/*
Make a Bed and Breakfast class (BnB) that inherits a House class and uses a Hotel class as a interface.
The hotel class should have a "guests" variable as an integer.
The abstract house class should have a rooms variable as a integer and a function "ringDoorbell".
The Bnb class will need to implement the house properties.
*/

import 'House.dart';
import 'Hotel.dart';

class BedAndBreakfast extends House implements Hotel {
//class BedAndBreakfast extends House with Hotel {
  int guests = 8;
  BedAndBreakfast() {
//    rooms = 4;
//    guests = 8;
  }
  void ringDoorbell() => print('Ring the door bell');
}