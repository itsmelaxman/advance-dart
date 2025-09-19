// Strategy Pattern Example in Dart
abstract class SortStrategy {
  List<int> sort(List<int> data);
}

class BubbleSort implements SortStrategy {
  @override
  List<int> sort(List<int> data) {
    var list = List<int>.from(data);
    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list.length - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          var temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list;
  }
}

class QuickSort implements SortStrategy {
  @override
  List<int> sort(List<int> data) {
    if (data.length < 2) return data;
    var pivot = data[0];
    var less = data.where((e) => e < pivot).toList();
    var greater = data.where((e) => e > pivot).toList();
    return [...sort(less), pivot, ...sort(greater)];
  }
}

class Sorter {
  SortStrategy strategy;
  Sorter(this.strategy);
  List<int> sort(List<int> data) => strategy.sort(data);
}

void main() {
  var data = [5, 2, 9, 1];
  var sorter = Sorter(BubbleSort());
  print('BubbleSort: ${sorter.sort(data)}');
  sorter.strategy = QuickSort();
  print('QuickSort: ${sorter.sort(data)}');
}
