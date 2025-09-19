// Observer Pattern Example in Dart
abstract class Observer {
  void update(String message);
}

class Subject {
  final List<Observer> _observers = [];
  void addObserver(Observer observer) => _observers.add(observer);
  void removeObserver(Observer observer) => _observers.remove(observer);
  void notifyObservers(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}
