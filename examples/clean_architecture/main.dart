// Clean Architecture Example in Dart
// This is a minimal demonstration of Clean Architecture layers.

// --- Domain Layer ---
abstract class CounterRepository {
  int fetchCount();
  void saveCount(int value);
}

class IncrementCounterUseCase {
  final CounterRepository repository;
  IncrementCounterUseCase(this.repository);
  int execute() {
    final current = repository.fetchCount();
    final updated = current + 1;
    repository.saveCount(updated);
    return updated;
  }
}

// --- Data Layer ---
class InMemoryCounterRepository implements CounterRepository {
  int _count = 0;
  @override
  int fetchCount() => _count;
  @override
  void saveCount(int value) => _count = value;
}

// --- Presentation Layer ---
void main() {
  final repository = InMemoryCounterRepository();
  final incrementUseCase = IncrementCounterUseCase(repository);
  print('Initial count: ${repository.fetchCount()}');
  print('After increment: ${incrementUseCase.execute()}');
}
