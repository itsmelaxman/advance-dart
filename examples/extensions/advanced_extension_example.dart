// Advanced Extensions Example
extension IterableStats<T extends num> on Iterable<T> {
  T sum() => this.fold<T>(0 as T, (prev, el) => (prev + el) as T);
  double average() => this.isEmpty ? 0 : this.sum().toDouble() / this.length;
}

extension NullableString on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}

void main() {
  var numbers = [1, 2, 3, 4, 5];
  print('Sum: ${numbers.sum()}');
  print('Average: ${numbers.average()}');

  String? s;
  print('Is null or empty: ${s.isNullOrEmpty}');
  s = '';
  print('Is null or empty: ${s.isNullOrEmpty}');
  s = 'dart';
  print('Is null or empty: ${s.isNullOrEmpty}');
}
