import 'package:fbn_app/domain/transaction.dart';
import 'package:fbn_app/presentation/modules/home/controller/home_controller.dart';
import 'package:fbn_app/presentation/modules/home/widgets/detail_widget.dart';
import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:fbn_app/presentation/resources/app_dimens.dart';
import 'package:fbn_app/presentation/resources/app_strings.dart';
import 'package:fbn_app/util/date_util.dart';
import 'package:fbn_app/util/ext_fxns.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionDetailPage extends StatelessWidget {
  final Transaction transaction;
  TransactionDetailPage({Key? key, required this.transaction})
      : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TAppColors.tBackground,
      appBar: AppBar(
        backgroundColor: TAppColors.tWhite,
        title: Text(transaction.trnxNaration),
        centerTitle: true,
        elevation: TAppElevation.e0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(TAppPadding.p0),
          child: Column(
            children: [
              15.ph,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: TAppPadding.p18,
                  vertical: TAppPadding.p14,
                ),
                decoration: BoxDecoration(
                  color: transaction.color,
                  borderRadius: BorderRadius.circular(TAppSize.s8),
                ),
                child: Text(
                  transaction.trnxDirection,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              15.ph,
              DetailWidget(
                label: 'Customer ID',
                text: controller.customer.id.toString(),
                color: transaction.color,
              ),
              Divider(
                height: 0.5,
                color: TAppColors.tGrey.shade300,
              ),
              DetailWidget(
                label: 'Transaction Narration',
                text: transaction.trnxNaration,
                color: transaction.color,
              ),
              Divider(
                height: 0.5,
                color: TAppColors.tGrey.shade300,
              ),
              DetailWidget(
                label: 'Transaction Amount',
                text:
                    '${TAppStrings.tCurrency} ${transaction.trnxAmount.decimalFormat()}',
                color: transaction.color,
              ),
              Divider(
                height: 0.5,
                color: TAppColors.tGrey.shade300,
              ),
              DetailWidget(
                label: 'Transaction Date',
                text: TDateUtil.formatDate(
                  transaction.trnxDate,
                ),
                color: transaction.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
