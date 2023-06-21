import 'package:fbn_app/presentation/modules/home/views/home_page.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePage());
  }
}
