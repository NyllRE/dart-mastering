Future<void> streamGenerator() async {
  createMessageStream()
      .map((message) => message) //=> modifies each item
      .where((message) => message.length > 0) //=> filters the items
      .listen((event) {
    print(event);
  });
}

Stream<String> createMessageStream() async* {
  //=>> the star on async* means we yield instead of return
  yield 'hey..'; //=> for streams we yield
  await Future.delayed(const Duration(seconds: 1));
  yield 'have you heard of...';
  await Future.delayed(const Duration(seconds: 1));
  yield '.';
  await Future.delayed(const Duration(seconds: 1));
  yield '..';
  await Future.delayed(const Duration(seconds: 1));
  yield '...';
  await Future.delayed(const Duration(seconds: 1));
  yield 'FLUTTER??';
}
