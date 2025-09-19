// Async: Future Example
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Data loaded!';
}

void main() async {
  print('Fetching data...');
  String data = await fetchData();
  print(data);
}
