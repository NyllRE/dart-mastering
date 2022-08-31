
void classes() {
  User myuser = User(
    name: "deez",
  );
  myuser.hasLongName();

  //=>> you can call static methods directly from class <<=//
  User.longNameThreshold; //=> 10
  print(myuser.brief);

  myuser.email;
  print(myuser.brief);
}

class User {
  final String name;
  String? _email;

  User({
    required this.name,
    String? email,
  }) : _email = email;
  //=> : >=> constructs a value based on other values

  bool hasLongName() => name.length >= 10;

  String _privateFunction() => "this can't be accessed outside";

  //==<< STATIC VALUES >>==//

  //=>> can be called from outside directly <<=//
  static const longNameThreshold = 10;

  //=>> another way to give a value outside is with the get method <<=//
  String get brief => 'username: $name, mail: $_email';

  //=> Called with >=> myuser.brief

  //=>> set usecasae:

  set email(String mail) {
    if (mail.contains('@')) {
      _email = mail;
    }
  }

  //=>> better set usecase
  String get email => _email ?? 'No Email Was Assigned';

}
