// Proxy Pattern Example in Dart
abstract class Service {
  void request();
}

class RealService implements Service {
  @override
  void request() => print('RealService: Handling request');
}

class ServiceProxy implements Service {
  final RealService _realService;
  bool _authenticated = false;
  ServiceProxy(this._realService);

  void authenticate() {
    _authenticated = true;
  }

  @override
  void request() {
    if (_authenticated) {
      _realService.request();
    } else {
      print('Proxy: Access denied. Please authenticate.');
    }
  }
}

void main() {
  var proxy = ServiceProxy(RealService());
  proxy.request(); // Access denied
  proxy.authenticate();
  proxy.request(); // Success
}
