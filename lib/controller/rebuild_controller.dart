import 'package:get/get.dart';

/*class RebuildController extends GetxController {
  var count1 = 0;
  var count2 = 0;

  void increment() {
    count1++;
    update();
  }

  void incrementTwo() {
    count2 ++;
    update();

  }

  void decrement() {
    count1--;
    update();

  }

  void decrementTwo() {
    count2 --;
    update();

  }

 int get sum => count1 + count2;
}*/ //Screen Four
class RebuildController extends GetxController {
  var count1 = 0.obs;
  var count2 = 0.obs;

  void increment() {
    count1++;
  }

  void incrementTwo() {
    count2++;
  }

  void decrement() {
    count1--;
  }

  void decrementTwo() {
    count2--;
  }

  int get sum => count1.value + count2.value;
}
