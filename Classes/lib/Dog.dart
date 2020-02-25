//this is a pointer to the existing object in the memory
class Dog {
  int age = 1;
  String name = 'fiddo';

  Dog(int age, String name) {
    this.age = age;
    this.name = name;
  }
  int ageInDogYears() => age * 7;
}