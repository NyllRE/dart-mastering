import 'dart:web_gl';

void classes() {
  User myuser = const User("deez", 45);
  myuser.hasLongName();

  //=>> you can call static methods directly from class <<=//
  User.longNameThreshold; //=> 10
}

class User {
  final String name;
  final int _privateNetWorth;

  const User(
    this.name,
    this._privateNetWorth,
  );

  bool hasLongName() {
    return name.length >= 10;
  }

  bool _privateFunction() {
    return true;
  }

  //==<< STATIC VALUES >>==//
  //=>> can be called from outside directly <<=//
  static const longNameThreshold = 10;
}
