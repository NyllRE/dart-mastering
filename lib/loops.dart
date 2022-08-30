void loops() {
  //==<< FOR LOOPS >>==//
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  //=> you can loop a list in a better way:
  // List<int> myList = [1, 2, 3, 4, 5];

  //=> or you can generate a list with for loop
  List<int> myList = [
    for (int n = 1; n <= 5; n++) n,
  ]; //=>[1,2,3,4,5]

  for (final myNum in myList) {
    print(myNum);
  }

  //=> or
  myList.forEach((myNum) => print(myNum));

  //=> dart made the code above easier py passing the function
  myList.forEach(print);

  //==<< WHILE LOOPS >>==//

  bool myBool = false;
  while (myBool) {
    print('infiniiiiite');
  }

  do {
    print('this will run first time regardless');
  } while (myBool);
}
