// File: part1_future.dart
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 4), () {
    return 'Your name is Elijah Gabriel Caunda!';
  });
}

void showMessage() async {
  print('Getting your Fullname...');
  String message = await getNameLater();
  print(message);
}

void main() {
  showMessage();
  print('This runs while waiting...');
}
