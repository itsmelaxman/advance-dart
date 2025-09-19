// Performance Benchmark Example
import 'dart:math';
// ...existing code...

void main() {
  final stopwatch = Stopwatch()..start();
  var sum = 0;
  for (var i = 0; i < 1000000; i++) {
    sum += sqrt(i).toInt();
  }
  stopwatch.stop();
  print('Sum: $sum');
  print('Elapsed: ${stopwatch.elapsedMilliseconds} ms');
}
