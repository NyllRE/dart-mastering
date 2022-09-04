String positionalParams(int x, double y, [String greeting = 'hello!']) {
  return "the number $x is different from $y, anyways $greeting";
}

String namedPositionalParams({int? x, double? y, String greeting = 'hello!'}) {
  return "NAMED: $x is different from $y $greeting";
}

String namedRequiredParams({
  required int x,
  required double y,
}) {
  return "REQ: $x is different from $y";
}

String functions() {
  String reply = positionalParams(5, 5, "hi!");
  String namedReply = namedPositionalParams(x: 5, y: 5, greeting: "hi!");
  myMethod<String>("deez");

  return '$reply\n$namedReply';
}

//==<< Custom Type Return >>==
//=>> you can include the type returned as you like
void myMethod<Type>(Type arg) {
  Type arg;
}
