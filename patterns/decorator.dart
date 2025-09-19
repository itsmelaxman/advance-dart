// Decorator Pattern Example in Dart
abstract class Coffee {
  String getDescription();
  double cost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => 'Simple Coffee';
  @override
  double cost() => 2.0;
}

class CoffeeDecorator implements Coffee {
  final Coffee _coffee;
  CoffeeDecorator(this._coffee);
  @override
  String getDescription() => _coffee.getDescription();
  @override
  double cost() => _coffee.cost();
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(Coffee coffee) : super(coffee);
  @override
  String getDescription() => super.getDescription() + ', Milk';
  @override
  double cost() => super.cost() + 0.5;
}

void main() {
  Coffee coffee = SimpleCoffee();
  print('${coffee.getDescription()} : ${coffee.cost()}');
  coffee = MilkDecorator(coffee);
  print('${coffee.getDescription()} : ${coffee.cost()}');
}
