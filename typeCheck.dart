void main() {
  var name = 'Alice';

  if (name is String) {
    print('name is a String');
  }
  print(name.runtimeType);
  var flyObjects = [1, 2, 3, 'four', 5.0];
  print(flyObjects.runtimeType);
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
  };
  print(image.runtimeType);

  /**
   * name is a String
    String
    List<Object>
    _Map<String, Object>
   */
}
