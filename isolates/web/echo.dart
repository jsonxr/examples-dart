import 'dart:isolate';

// == new file echo.dart.
void main(List<String> args, SendPort replyTo) {
  print("jason was here in the echo.dart");
  //replyTo.send(args[0]);
}
