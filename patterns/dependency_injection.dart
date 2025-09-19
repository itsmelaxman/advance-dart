// Dependency Injection Example in Dart
class Logger {
  void log(String message) => print('LOG: $message');
}

class AppService {
  final Logger logger;
  AppService(this.logger);
  void run() {
    logger.log('AppService is running');
  }
}

void main() {
  var logger = Logger();
  var service = AppService(logger); // Inject dependency
  service.run();
}
