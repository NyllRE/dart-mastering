void operators() {
  int result;
  double resultDouble = 5 / 5;
  result = 5 ~/ 5;
  int x = 5;
  x++; //6
  x--; // 5
  x = x + 5; // 10
  x += 5; // 15
  x -= 5; // 10
  x *= 5; // 50

  // x /= 5; this is not possible due to the x being of type int instead of double

  x ~/= 5; // 10 /=/ you can do this to divide integers
  bool isEqual = 5 == 10;
  String myString = "Hello" + isEqual.toString();
  String myStringBetter = "Hello $isEqual";

  String myMultipleExpressions = "math be like ${4 / 5 + 3 / 4 + 2}";
  print(myMultipleExpressions);
}
