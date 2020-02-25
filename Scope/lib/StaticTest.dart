class StaticTest {
 static int _counter = 0;
  StaticTest() {
    _counter++;
    print('There are ${_counter} of us');
  }

  static void display() {
    print('Hello from static method');
  }
}