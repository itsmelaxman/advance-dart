// Builder Pattern Example in Dart
class Burger {
  final bool cheese;
  final bool lettuce;
  final bool tomato;
  Burger._builder(BurgerBuilder builder)
    : cheese = builder.cheese,
      lettuce = builder.lettuce,
      tomato = builder.tomato;
}

class BurgerBuilder {
  bool cheese = false;
  bool lettuce = false;
  bool tomato = false;
  BurgerBuilder addCheese() {
    cheese = true;
    return this;
  }

  BurgerBuilder addLettuce() {
    lettuce = true;
    return this;
  }

  BurgerBuilder addTomato() {
    tomato = true;
    return this;
  }

  Burger build() => Burger._builder(this);
}

void main() {
  var burger = BurgerBuilder().addCheese().addTomato().build();
  print(
    'Burger with cheese: ${burger.cheese}, lettuce: ${burger.lettuce}, tomato: ${burger.tomato}',
  );
}
