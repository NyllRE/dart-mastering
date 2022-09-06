// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'classes.freezed.dart';

void classes() {
  User myuser = User(
    name: "deez",
    age: 69
  );

  // myuser.hasLongName();

  //=>> you can call static methods directly from class <<=//
  // User.longNameThreshold; //=> 10

  // myuser.email = "deez@bruhs";
  // print(myuser.email);

  // Admin myAdmin = Admin(adminId: 6456, name: 'notch', email: 'deez@bruhs');
  // print(myAdmin.brief);
}

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    required int age,
  }) = _User;
}



//=>> the method below is the traditional way, but with the freezed package you can write much less code to do the same thing above
//=> requires the `part 'classes.freeze.dart'` on the first line

//=>> classes are extending from Object originally, which means that behind the curtains this is how the class starts:
//=> class User extends Object {...}
//=>> if you want the class to be only extended and never called:
//=> abstract class User {...}
/* class User {
  //==<< CONSTRUCTORS >>===
  //=>> equivalent of __init__() in python or constructor() in javascript
  final String name;
  String? _email;

  User({
    required this.name,
    String? email,
  }) : _email = email;
  //=> : >=> constructs a value based on other values

  // ==<< FUNCTIONS >>==

  bool hasLongName() => name.length >= 10;

  @mustCallSuper //=> from `meta` package
  void signOut() {
    print("signing out");
  }

  // ==<< STATIC VALUES >>==

  //=>> can be called from outside directly <<=//
  static const longNameThreshold = 10;

  //=>> another way to give a value outside is with the get method <<=//
  String get brief => 'username: $name, mail: ${_email ?? email}';
  //=> Called with -> myuser.brief

  //=>> set usecase:

  set email(String mail) {
    if (mail.contains('@')) {
      _email = mail;
    }
  }

  //=>> better set usecase
  String get email => _email ?? 'No Email Was Assigned';

  //==<< Factories >>==

  factory User.admin() {
    return Admin(
      adminId: 123,
      name: 'deez',
      email: 'bru@l',
    );
  }

  //==<< OVERRIDDEN OPERATORS >>==
  //=>> you can override anything in a class to change its functionality
  //=>> generated with the ~Dart Data Class Generator~ extension by pressing `space + .` on the class constructor
  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name && other._email == _email;
  }

  @override
  int get hashCode => name.hashCode ^ _email.hashCode;
} */


//==<< EXTENDING CLASSES >>==
/* class Admin extends User {
  final int _adminId;

  Admin({
    required adminId,
    required super.name,
    required String? email,
  }) : _adminId = adminId;

  @override
  String get brief => "Admin:\n${super.brief}";

  @override
  void signOut() {
    print('Signing out Admin Account');
    super.signOut();
  }
}
 */