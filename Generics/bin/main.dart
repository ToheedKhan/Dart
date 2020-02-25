import 'package:Generics/Generics.dart' as Generics;
import 'package:test/test.dart';
//Geenric, code reuse, better type check at compile time, type safety
//Generic class
import 'package:Generics/counter.dart';

//Assignment
import 'package:Generics/Cashier.dart';
import 'package:Generics/Manager.dart';
import 'package:Generics/Payroll.dart';
import 'package:Generics/Employee.dart';


void main(List<String> arguments) {
  print('Hello world: ${Generics.calculate()}!');

//  add(1, 2);
//  add<int>(1, 2);
//  add<double>(1.0, 2.5);
//  add<String>('Hello', 'World');

  addNumbers(1, 2);
  addNumbers<int>(1, 2);
  addNumbers<double>(1.0, 2.5);
//  addNumbers<String>('Hello', 'World');
  //Simple Example
  //var means some sort of generic object

List<num> values = [1,2,3,4,5];
print(add(2, values));

//Generic class

Counter<double> doubles = new Counter<double>();
doubles.addAll([1.0,2.0, 3.0, 4.4]);
doubles.total();

  Counter<int> ints = new Counter<int>();
  ints.addAll([1,2, 3, 4]);
  ints.total();

  //Assignment
  print('Assignment...');
  Manager boss = new Manager();
  Cashier jill = new Cashier();

  Payroll payroll = new Payroll();
  payroll.add(boss);
  payroll.add(jill);

  payroll.print();
}

//  void add<T>(T a, var b) {
//void add<T>(T a, T b) {
//  print(a + b);
//}

void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}

T add<T extends num>(T value, List<T> items) {
  T ret = value;
  items.forEach((value) {
    ret = ret + value;
  });
return ret;
}