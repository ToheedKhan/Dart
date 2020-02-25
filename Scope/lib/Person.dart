class Person {
  String _name = '';
  int _age = 0;
  String desination = '';

  Person(String name, int age, String designation) {
//    this.name = name;
    _name = name;
    _age = age;
    this.desination = designation;
  }
  
  void sayHello() => print('Hello my name if ${_name} I am ${_age} years old, and I am a ${desination}.');

  void _display(String message) => print('message ${message}');

//  void saySomething(String message) => this._display(message);
  void saySomething(String message) => _display(message);


  //getters and setters

String get name => _name;
void set name(String value) => _name = value;

int get age => _age;
void set age(int value) => _age = value * 2;
}