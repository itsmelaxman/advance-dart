// Advanced Unit Test: Mocking Example
import 'package:test/test.dart';

abstract class ApiService {
  Future<String> fetchData();
}

class MockApiService implements ApiService {
  @override
  Future<String> fetchData() async => 'mocked data';
}

void main() {
  test('MockApiService returns mocked data', () async {
    final api = MockApiService();
    expect(await api.fetchData(), equals('mocked data'));
  });
}
