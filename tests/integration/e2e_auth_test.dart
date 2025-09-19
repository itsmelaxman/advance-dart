// E2E Test Example: User Auth
import 'package:test/test.dart';

class AuthService {
  Future<bool> login(String username, String password) async {
    await Future.delayed(Duration(milliseconds: 100));
    return username == 'admin' && password == 'admin';
  }
}

void main() {
  group('AuthService E2E', () {
    final auth = AuthService();
    test('successful login', () async {
      expect(await auth.login('admin', 'admin'), isTrue);
    });
    test('failed login', () async {
      expect(await auth.login('user', 'wrong'), isFalse);
    });
  });
}
