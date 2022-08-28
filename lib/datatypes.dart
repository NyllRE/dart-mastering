void datatypes() {
// Datatypes

  String myString = "Le bruh moment!";
  print(myString);
  print(myString.contains('bruh')); // validate if a word is in string => Bool

  int myInteger = 6;
  double myDouble = 6.9;
  print(myDouble);
  print(myInteger.isEven); // validation => Bool

  // An easier way to work with numbers
  // num combines int and double
  num myNumber = 4;
  num myOtherNumber = 4.4;

  bool myBool = true;

  // a way to declare any type and change to any type
  dynamic myDynamic = "this can be anything";
  myDynamic = true;

  // but another way to store data without telling it what it is
  var myVariable = true;
  // but the type can't be changed, the var locks it's type.
  // this is a shorthand for any data you want but for readability
  // we use the correct type for each thing like bool, int, etcetera

  // but if you want a completely immutable variable:
  final myFinal = "this can't be changed later";

  // you can tell it what type it is
  final int myFinalInteger = 3;

  // for nullable variables:
  String? myNull = null;
  print(myNull?.length);
  // if you know that the code is unsafe and want to check it:
  print(myNull!.length);
}
