// Repository Pattern Example in Dart
abstract class UserRepository {
  Future<List<String>> fetchUsers();
}

class ApiUserRepository implements UserRepository {
  @override
  Future<List<String>> fetchUsers() async {
    // Simulate API call
    await Future.delayed(Duration(milliseconds: 500));
    return ['Alice', 'Bob', 'Charlie'];
  }
}

class UserService {
  final UserRepository repository;
  UserService(this.repository);
  Future<void> printUsers() async {
    var users = await repository.fetchUsers();
    print('Users: $users');
  }
}

void main() async {
  var service = UserService(ApiUserRepository());
  await service.printUsers();
}
