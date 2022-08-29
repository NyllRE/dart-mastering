void loops() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  bool myBool = false;
  while (myBool) {
    print('infiniiiiite');
  }

  do {
    print('this will run first time regardless');
  } while (myBool);
}
