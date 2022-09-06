import 'package:http/http.dart';

Future fetchingData() async {
  // throughAsync();
  // throughCallBacks();
  throughPeriodicStream();
}

Future throughAsync() async {
  final data = await Client()
      .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  print(data.body);
}

void throughCallBacks() {
  Client()
      .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
      .then((r) => print(r))
      .catchError((e) => print(e));
}


Future<void> throughPeriodicStream() async {
  final myStream = Stream.periodic(Duration(seconds: 1));

  //=>> an action that happens once each second     /\
  final subscription = myStream.listen((event) {
    print("this happens each second");
  });

  //=>> an action that happens after 1 seconds \/
  await Future.delayed(const Duration(seconds: 1));
  //=> python sleep() equivalent
  subscription.cancel();
}
