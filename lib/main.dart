import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_graph_example/repository/hello.dart';
import 'package:riverpod_graph_example/usecase/greet.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CountView(),
    );
  }
}

class CountView extends ConsumerWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(greetNotifierProvider);

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Greet: $greet',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(onPressed: () {
              ref.read(helloRepositoryProvider).logger();
            }, child: const Text('Logger'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(greetNotifierProvider.notifier).greetAction(),
        tooltip: 'Greet',
        child: const Icon(Icons.add),
      ),
    );
  }
}

