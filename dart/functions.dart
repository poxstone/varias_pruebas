import 'dart:async';

void main() {
  printWithDelay('hola');
  hello();
}

/* async */
Future<void> printWithDelay(String message) async {
  const oneSecond = Duration(seconds: 1);
  await Future.delayed(oneSecond);
  print(message);
}

hello() {
  print('later async');
}
