import 'dart:developer';

void extraDatatypes() {
  //=<< LISTS >>=//

  lists();

  //=<< MAPS "JSON" >>=//

  maps();

  //=<< SETS >>=//

  Set<int> mySet = {1, 2, 3};

  //=<< ENUMS >>=//

  enums();
}

void lists() {
  List<int> myList = [1, 2, 3];
  myList[0]; //=> Returns First Element

  //=> you can declare the type of items in list even in a list literal <=//
  <int>[1, 2, 3];

  //==> Mapping Lists
  //=> By default this is type of Iterable, so you need to add .toList() <=//
  final myMappedList = myList.map((mynum) => mynum + 5).toList();

  //==> Filtering Lists
  final myFilteredList = myList.where((mynum) => mynum >= 2).toList();
}

void maps() {
  Map<String, dynamic> myMap = {
    "name": "Jason Derulo",
    "age": 69,
    "registered": true
  };
  myMap['name']; //=> same as Python
}

enum AccountType { free, premium, vip }

void enums() {
  AccountType userAccount;
  userAccount = AccountType.vip;

  //=> or >=>>

  final userAccount2 = AccountType.free;

  //=<< USE CASE EXAMPLE >>=//

  switch (userAccount) {
    case AccountType.free:
      print('user is broke e3');
      break;
    case AccountType.premium:
      print('user has money');
      break;
    case AccountType.vip:
      print('user is redeasterian eeee3');
      break;
  }
}
