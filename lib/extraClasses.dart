class exampleClass {
  final int myField;
  exampleClass(this.myField);

  int get publicProperty => 123;

  String getSomeString() {
    return "Hello";
  }
}

class otherClass implements exampleClass {
  @override
  String getSomeString() {
    // TODO: implement getSomeString
    throw UnimplementedError();
  }

  @override
  // TODO: implement myField
  int get myField => throw UnimplementedError();

  @override
  // TODO: implement publicProperty
  int get publicProperty => throw UnimplementedError();
}

//==<< Real Life UseCase >>==
//=>> here this abstract class acts like a datareader interface
abstract class DataReader<Type> {
  Type readData();
}

//=>> it's suggested to only use the implements with abstract classes

class IntegerDataReader implements DataReader<int> {
  @override
  int readData() {
    print('deez data');
    return 12345;
  }
}
