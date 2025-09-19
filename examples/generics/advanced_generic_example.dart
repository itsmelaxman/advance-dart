// Advanced Generics Example
class Cache<T extends num> {
  final Map<String, T> _store = {};
  void setItem(String key, T value) => _store[key] = value;
  T? getItem(String key) => _store[key];
}

T sum<T extends num>(List<T> items) {
  num total = T == int ? 0 : 0.0;
  for (var item in items) {
    total += item;
  }
  return total as T;
}

void main() {
  var intCache = Cache<int>();
  intCache.setItem('a', 10);
  print(intCache.getItem('a')); // 10

  var doubleCache = Cache<double>();
  doubleCache.setItem('b', 3.14);
  print(doubleCache.getItem('b')); // 3.14

  print(sum<int>([1, 2, 3])); // 6
  print(sum<double>([1.5, 2.5])); // 4.0
}
