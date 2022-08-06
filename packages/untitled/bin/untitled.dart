void main(List<String> arguments) {
  final a = Uri.parse('http://example.com/foo;key1=value1?key2=value2#key3=value3');

  print(a.path);
}
