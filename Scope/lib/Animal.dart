class Animal {
  String name = 'x';

  Animal(String name) {
//    this.name = name;
//    String name = 'Hello';
    this.name = name;
    name = name;

    print(name);
    print(this.name);
  }
}