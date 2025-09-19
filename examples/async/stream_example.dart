// Advanced Async: Stream Example
import 'dart:async';

Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    yield i;
  }
}

void main() async {
  final controller = StreamController<int>();

  // Listen to the stream
  controller.stream.listen((value) {
    print('Received: $value');
  }, onDone: () => print('Stream closed!'));

  // Add data to the stream
  await for (var value in countStream(5)) {
    controller.add(value);
  }
  await controller.close();
}
