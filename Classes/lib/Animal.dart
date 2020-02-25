class Animal {
  String _name = ""; //_ means private variable

  //Constructor are useful to pass information to and from the class
  //Default constructor
 /* Animal() {
    print('Constructed');
    _name = 'Sam';
  } */

 Animal(String name) {
   _name = name;
 }

  void sayHello() {
    if(_name.isEmpty) {
      print('Hello');
    }
    else {
      print('Hello ${_name} nice to meet you');
    }
  }
}