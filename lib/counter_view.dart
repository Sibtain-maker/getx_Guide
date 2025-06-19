import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/counter_countroller.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCountroller controller = Get.put(CounterCountroller());
    return Scaffold(
      appBar: AppBar(title: const Text('Counter View')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Obx(
              () => Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
