// Adapter Pattern Example in Dart
class OldPrinter {
  void printOld(String text) => print('Old Printer: $text');
}

abstract class Printer {
  void printText(String text);
}

class PrinterAdapter implements Printer {
  final OldPrinter oldPrinter;
  PrinterAdapter(this.oldPrinter);
  @override
  void printText(String text) => oldPrinter.printOld(text);
}

void main() {
  var oldPrinter = OldPrinter();
  Printer printer = PrinterAdapter(oldPrinter);
  printer.printText('Hello Adapter!');
}
