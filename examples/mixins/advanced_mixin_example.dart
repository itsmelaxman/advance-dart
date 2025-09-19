// Advanced Mixins Example
mixin Logger {
  void log(String message) => print('LOG: $message');
}

mixin Timestamped {
  DateTime get timestamp => DateTime.now();
}

abstract class Identifiable {
  String get id;
}

class MyClass with Logger, Timestamped implements Identifiable {
  @override
  final String id;
  MyClass(this.id);
}

void main() {
  var obj = MyClass('abc123');
  obj.log('Created at ${obj.timestamp} with id ${obj.id}');
}
