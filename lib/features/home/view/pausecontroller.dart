import 'package:get/get.dart';

class Pausecontroller extends GetxController {
  RxBool isPlay = true.obs;
  void onclick() {
    isPlay.value = !isPlay.value;
  }
}
