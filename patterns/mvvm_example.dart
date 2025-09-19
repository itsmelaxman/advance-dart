// MVVM Pattern Example in Dart
// Model
class CounterModel {
  int value = 0;
}

// ViewModel
class CounterViewModel {
  final CounterModel model;
  CounterViewModel(this.model);
  int get value => model.value;
  void increment() => model.value++;
}

// View
class CounterView {
  void show(int value) => print('Counter: $value');
}

void main() {
  var model = CounterModel();
  var viewModel = CounterViewModel(model);
  var view = CounterView();
  viewModel.increment();
  view.show(viewModel.value);
}
