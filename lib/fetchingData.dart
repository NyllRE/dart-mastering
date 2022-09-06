import 'package:http/http.dart';

void fetchingData() async {
  throughAsync();
  throughCallBacks();
  // throughPeriodicStream();
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
