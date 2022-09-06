void trycatch() {
  try {
    print('ball');
    throw MyCustomException;
  } catch (e) {
//} on MyCustomException { //=>> for specific exceptions
    print(e);
    print('object');
  }
}

class MyCustomException implements Exception {}
