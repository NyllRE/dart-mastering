int Function(int) twice(int Function(int) f) {
  return (int x) {
    return f(f(x));
  };
}

void returningFunctions() {
  final twicePlusFive = twice((int x) => x + 5);

  print(twicePlusFive(5));
}
