import 'dart:isolate';
import 'dart:async';

main() {
  print("main...");
  var response = new ReceivePort();
  Future<Isolate> remote =
      Isolate.spawnUri(Uri.parse("echo.dart"), ["foo"], response.sendPort);
  remote.then((_) => response.first)
    .whenComplete(response.close)
    .then((msg) { print("received: $msg"); });
  print("main out...");
}