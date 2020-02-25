import 'package:ErrorHandling/ErrorHandling.dart' as ErrorHandling;

import 'dart:io';
//Error is a program failure
//Exception : Can be handled
void main(List<String> arguments) {
  print('Hello world: ${ErrorHandling.calculate()}!');

  try {
    int age = askAge();
    if(age < 18) throw new Exception('too young');
    if(age > 99) throw new Exception('too old');

    print('You may continue');

  } catch (e) {
    print('Error: ${e.toString()}');
  }
  finally {
    print('good bye');
  }


  try {
    int age1;
    int dogYears = 8;
    if (dogYears != 7) throw new Exception('dog Years must be 7.');
    if (age1 == null) throw new NullThrownError();
    print(age1 * dogYears);
  }
  on NullThrownError {
    print('The value was null!!!');
  }
  on NoSuchMethodError {
    print('Sorry Thats not going to happen');
  }
  catch(e) {
    print('There was an exception: ${e.toString()}');
  }
  finally {
    print('Completed');
  }


}

int askAge() {
  print('Enter an age');
  return int.parse(stdin.readLineSync(), onError: (String err) {
    print('Not a number');
    return 0;
  });

}