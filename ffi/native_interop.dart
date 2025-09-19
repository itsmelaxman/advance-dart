// FFI Example (pseudo-code, requires setup)
// import 'dart:ffi' as ffi;
//
// typedef c_add_func = ffi.Int32 Function(ffi.Int32, ffi.Int32);
// typedef DartAddFunc = int Function(int, int);
//
// void main() {
//   final dylib = ffi.DynamicLibrary.open('native_add.dll');
//   final add = dylib.lookupFunction<c_add_func, DartAddFunc>('add');
//   print('3 + 4 = ${add(3, 4)}');
// }
