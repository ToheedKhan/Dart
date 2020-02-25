import 'package:FlowControl/FlowControl.dart' as FlowControl;

void main(List<String> arguments) {
  print('Hello world: ${FlowControl.calculate()}!');

  //Assert
  print('Starting');
  int age = 43;

  assert(age == 43);

  print('Finished');

  //IF ELSE

  if(age == 43) print("Ok");
  if(age != 43) {
    print('No');
    age = 43;
  } else print('in else');

  //Switch
 switch(age) {
   case 18:
     print('You are yonger');
     break;
 }
  //For loop
List<String> people = ['a', 'b', 'c', 'd'];
 people.forEach((String person) {
    print(person);
  });

  people.forEach((person) {

    print(person);
  });

  List data = [1,2,3];

  for(final i in data){
    print('$i');
    if (i == 2){
      break;
    }
  }

  var data1 = [1, 2, 3];
  data1.takeWhile((val) => val != 2).forEach(print);

  List<int> example = [ 1, 2, 3 ];

  for (int value in example) {
    if (value == 2) {
      break;
    }
  }
}
