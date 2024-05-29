import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hello.g.dart';

abstract interface class HelloRepository {
  void logger();
}

@Riverpod(keepAlive: true)
HelloRepository helloRepository(HelloRepositoryRef ref) {
  return HelloRepositoryImpl();
}

class HelloRepositoryImpl implements HelloRepository {
  @override
  void logger() {
    debugPrint('Hello, Riverpod!');
  }
}