//=== DECLARING A TYPE ===//
typedef intTransformer = int Function(int);

//=== NESTED FUNCTION ===//
//= this function takes a function as args, and returns a function =//
intTransformer twice(intTransformer f) {
  //= this takes x as arg, runs the function given twice with the arg and returns it =//
  return (int x) => f(f(x));

}


void returningFunctions() {
  final twicePlusFive = twice((int x) => x + 5);

  print(twicePlusFive(5));
}
