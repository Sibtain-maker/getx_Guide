import 'package:get/state_manager.dart';

class CounterCountroller extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
