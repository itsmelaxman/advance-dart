// Real-World Use Case: User Authentication Service
abstract class AuthService {
  Future<bool> login(String username, String password);
  Future<void> logout();
}

class MockAuthService implements AuthService {
  String? _loggedInUser;
  @override
  Future<bool> login(String username, String password) async {
    await Future.delayed(Duration(milliseconds: 300));
    if (username == 'admin' && password == 'admin') {
      _loggedInUser = username;
      return true;
    }
    return false;
  }

  @override
  Future<void> logout() async {
    await Future.delayed(Duration(milliseconds: 100));
    _loggedInUser = null;
  }
}

void main() async {
  final auth = MockAuthService();
  final success = await auth.login('admin', 'admin');
  print('Login success: $success');
  // Print the logged in user after login
  print('Logged in user: ${auth._loggedInUser}');
  await auth.logout();
  // Print the logged in user after logout
  print('Logged in user after logout: ${auth._loggedInUser}');
  print('Logged out.');
}
