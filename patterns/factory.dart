// Factory Pattern Example in Dart
abstract class Animal {
  void speak();
}

class Dog implements Animal {
  @override
  void speak() => print('Woof!');
}

class Cat implements Animal {
  @override
  void speak() => print('Meow!');
}

class AnimalFactory {
  static Animal create(String type) {
    switch (type) {
      case 'dog':
        return Dog();
      case 'cat':
        return Cat();
      default:
        throw Exception('Unknown animal type');
    }
  }
}
