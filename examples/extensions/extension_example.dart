// Extensions Example
extension NumberParsing on String {
  int toInt() => int.parse(this);
}

void main() {
  print('42'.toInt()); // 42
}
