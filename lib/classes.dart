void classes() {
  User myuser = const User("deez", 45);
  myuser.hasLongName();

  //=>> you can call static methods directly from class
  User.longNameThreshold; //=> 10
}

class User {
  final String name;
  final int netWorth;

  const User(
    this.name,
    this.netWorth,
  );

  bool hasLongName() {
    return name.length >= 10;
  }

  //=<< static values >>=//
  //=>> can be called from outside directly <<=//
  static const longNameThreshold = 10;
}
