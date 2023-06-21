import 'package:fbn_app/app/asset_manager.dart';
import 'package:fbn_app/domain/customer.dart';
import 'package:fbn_app/domain/transaction.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Customer customer = Customer(
      id: 2339922,
      name: 'John Jimoh',
      gender: 'M',
      title: 'Mr',
      balance: 17450,
      photo: TAssetManager.getImagePath(tProfileImg));

  List<Transaction> transactions = [];

  @override
  void onInit() {
    transactions = transactionList;
    super.onInit();
  }
}
