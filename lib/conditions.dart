void conditions() {
  final myInt = 5;

  //==<< IF STATEMENTS >>==
  if (myInt == 5) {
    print("it's $myInt!");
  } else if (myInt == 25) {
    print("wait, how is it $myInt??");
  } else {
    print("welp, I don't have a clue how it's $myInt now");
  }

  //==<< SWITCH STATEMENTS >>==//
  //=>> checks only for Equality <<=//
  switch (myInt) {
    case 5:
      print("it's $myInt!");
      break;
    case 25:
      print("how does this keep happening? who turned it into $myInt");
      break;
    default:
      print("the code is cursed");
  }

  <String>[
    'first',
    'next',
    if (true) 'third' else 'deez',
  ];

  //=>> A way to declare strings based on if the falue is nulled or not
  // same as || in Javascript and or in python
  String myConditionalString = null ?? 'nuts';
}
