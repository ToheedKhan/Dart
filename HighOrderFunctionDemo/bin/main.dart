
void main(List<String> arguments) {

  var tester = [1,2,3];
  var result = forAll(factorial, tester);
  print(tester);
  print(result);
}


List<int> forAll(Function f, List<int> intList){
  var newList = List<int>();
  for(var i = 0; i < intList.length; i ++){
    newList.add(f(intList[i]));
  }
  return newList;
}

// Recursive factorial function
int factorial(int x) {
  if (x == 1) {
    return 1;
  } else {
    return x*factorial(x-1);
  }
}