// File: part3_stream.dart
Stream<String> messageStream() async* {
yield 'First message';
await Future.delayed(Duration(seconds: 1));
yield 'Second message';
await Future.delayed(Duration(seconds: 1));
yield 'Third message';
}

void listenToMessages() {
messageStream().listen((msg) {
print('New: $msg');
});
}
void main() {
listenToMessages();
print('Listening to messages...');
}