library app_pages;

import 'package:fbn_app/presentation/modules/home/views/home_page.dart';
import 'package:fbn_app/presentation/modules/home/views/transaction_detail_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_ROUTE = _Paths.SPLASH_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => HomePage(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePage(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_DETAIL_PAGE,
      page: () => TransactionDetailPage(transaction: Get.arguments),
    ),
  ];
}
