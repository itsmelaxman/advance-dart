// Generics Example
T getFirst<T>(List<T> items) {
  return items.first;
}

void main() {
  print(getFirst<int>([1, 2, 3])); // 1
  print(getFirst<String>(['a', 'b', 'c'])); // a
}
