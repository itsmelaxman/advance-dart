// Mixins Example
mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class MyClass with Logger {}

void main() {
  var obj = MyClass();
  obj.log('Hello from mixin!');
}
