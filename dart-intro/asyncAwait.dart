Future<void> main() async {
  print('Getting data...');
  
  String result = await fetchData(); // Wait here until done

  print('Data received: $result');
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  return 'Data from server';
}
