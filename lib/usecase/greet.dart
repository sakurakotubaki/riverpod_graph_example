import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'greet.g.dart';

@riverpod
class GreetNotifier extends _$GreetNotifier {
  @override
  String build() {
    return 'Hello, Riverpod!';
  }

  void greetAction() {
    state = 'GoodMorning, Riverpod!';
  }
}