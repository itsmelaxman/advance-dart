
# Advanced Dart Topics

This document covers advanced Dart language features, best practices, and tips for experienced developers. See code samples in the `examples/` folder.

## Mixins
Mixins allow you to reuse a class’s code in multiple class hierarchies.

```dart
mixin Logger {
	void log(String message) => print('LOG: $message');
}

class MyClass with Logger {}
```

## Extensions
Extensions add new functionality to existing libraries.

```dart
extension NumberParsing on String {
	int toInt() => int.parse(this);
}
print('42'.toInt()); // 42
```

## Generics
Generics enable classes and methods to operate on different data types while providing compile-time safety.

```dart
T getFirst<T>(List<T> items) => items.first;
print(getFirst<int>([1, 2, 3])); // 1
```

## Asynchronous Programming
Dart supports async programming with `Future`, `Stream`, and `async`/`await`.

```dart
Future<String> fetchData() async {
	await Future.delayed(Duration(seconds: 1));
	return 'Data loaded!';
}
```

## FFI and Interoperability
Use FFI to call native C code from Dart.

```dart
// import 'dart:ffi' as ffi;
// final dylib = ffi.DynamicLibrary.open('native_add.dll');
// ...
```

## Performance Optimization
Use profiling tools and efficient algorithms. Example: benchmarking code execution time.

```dart
final stopwatch = Stopwatch()..start();
// ... code ...
stopwatch.stop();
print('Elapsed: \\${stopwatch.elapsedMilliseconds} ms');
```

## Design Patterns
Implement common patterns like Singleton, Factory, and Observer in Dart.

```dart
class Singleton {
	static final Singleton _instance = Singleton._internal();
	factory Singleton() => _instance;
	Singleton._internal();
}
```
