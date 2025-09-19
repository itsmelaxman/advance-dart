// MVC Pattern Example in Dart
// Model
class CounterModel {
  int value = 0;
}

// View
class CounterView {
  void show(int value) => print('Counter: $value');
}

// Controller
class CounterController {
  final CounterModel model;
  final CounterView view;
  CounterController(this.model, this.view);
  void increment() {
    model.value++;
    view.show(model.value);
  }
}

void main() {
  var model = CounterModel();
  var view = CounterView();
  var controller = CounterController(model, view);
  controller.increment();
  controller.increment();
}
