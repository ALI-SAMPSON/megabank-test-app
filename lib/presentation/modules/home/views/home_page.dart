import 'package:fbn_app/app/asset_manager.dart';
import 'package:fbn_app/domain/transaction.dart';
import 'package:fbn_app/presentation/modules/home/controller/home_controller.dart';
import 'package:fbn_app/presentation/modules/home/widgets/custom_icon_button.dart';
import 'package:fbn_app/presentation/modules/home/widgets/detail_widget.dart';
import 'package:fbn_app/presentation/modules/home/widgets/transaction_widget.dart';
import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:fbn_app/presentation/resources/app_dimens.dart';
import 'package:fbn_app/presentation/resources/app_strings.dart';
import 'package:fbn_app/routes/app_pages.dart';
import 'package:fbn_app/util/date_util.dart';
import 'package:fbn_app/util/ext_fxns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TAppColors.tBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(TAppPadding.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // mobile app bar
              Row(
                children: [
                  Container(
                    width: TAppSize.s32,
                    height: TAppSize.s32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(TAppSize.s8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          TAssetManager.getImagePath(tProfileImg),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        'Welcome Back, ${controller.customer.name}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      5.ph,
                      Text(
                        '#${controller.customer.id}',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(color: TAppColors.tGrey),
                      ),
                    ],
                  )),
                  const Icon(CupertinoIcons.bell),
                ],
              ),
              20.ph,
              // Total balance
              Text(
                TAppStrings.tTotalBalance,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.apply(color: TAppColors.tGrey),
              ),
              5.ph,
              RichText(
                text: TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.apply(color: TAppColors.tBlack),
                    text:
                        '${TAppStrings.tCurrency}${controller.customer.balance.decimalFormat()}',
                    children: [
                      TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.apply(color: TAppColors.tGrey),
                        text: '.00',
                      ),
                    ]),
              ),

              8.ph,
              Text(
                '-41.07% Today',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.apply(color: TAppColors.tSecondary),
              ),
              20.ph,
              // transfer & request buttons

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomIconButton(
                      bgColor: TAppColors.tPrimary,
                      label: TAppStrings.tTransfer,
                      icon: Icons.send,
                    ),
                    16.pw,
                    const CustomIconButton(
                      bgColor: TAppColors.tSecondary,
                      label: TAppStrings.tWithdraw,
                      icon: Icons.compare_arrows,
                    ),
                    16.pw,
                    const CustomIconButton(
                      bgColor: TAppColors.tPurple,
                      label: TAppStrings.tRequest,
                      icon: CupertinoIcons.arrow_uturn_down_circle_fill,
                    ),
                  ],
                ),
              ),

              25.ph,

              // All recent Transactions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TAppStrings.tRecentTransactions,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
              10.ph,
              Expanded(
                child: ListView.builder(
                    itemCount: controller.transactions.length,
                    itemBuilder: (context, index) {
                      final transaction = controller.transactions[index];
                      return TransactionWidget(
                          transaction: transaction,
                          onTap: () {
                            showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(TAppRadius.r20),
                                    topRight: Radius.circular(TAppRadius.r20),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return Container(
                                    padding:
                                        const EdgeInsets.all(TAppPadding.p16),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 35,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color:
                                                TAppColors.tGreyColorShade300,
                                            borderRadius: BorderRadius.circular(
                                                TAppRadius.r10),
                                          ),
                                        ),
                                        15.ph,
                                        // title
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    TAppStrings
                                                        .tTransactionDetail,
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge,
                                                  ),
                                                  5.ph,
                                                  Text(
                                                    transaction.trnxNaration,
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.apply(
                                                          color:
                                                              transaction.color,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: TAppPadding.p14,
                                                vertical: TAppPadding.p10,
                                              ),
                                              decoration: BoxDecoration(
                                                color: transaction.color,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        TAppSize.s8),
                                              ),
                                              child: Text(
                                                transaction.trnxDirection,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                              ),
                                            ),
                                          ],
                                        ),
                                        // details
                                        15.ph,
                                        Divider(
                                          height: TAppSize.s0_3,
                                          color: transaction.color,
                                        ),
                                        DetailWidget(
                                          label: TAppStrings.tCustomerID,
                                          text:
                                              controller.customer.id.toString(),
                                          color: transaction.color,
                                        ),
                                        Divider(
                                          height: TAppSize.s0_3,
                                          color: transaction.color,
                                        ),
                                        DetailWidget(
                                          label:
                                              TAppStrings.tTransactionNarration,
                                          text: transaction.trnxNaration,
                                          color: transaction.color,
                                        ),
                                        Divider(
                                          height: TAppSize.s0_3,
                                          color: transaction.color,
                                        ),
                                        DetailWidget(
                                          label: TAppStrings.tTransactionAmount,
                                          text:
                                              '${TAppStrings.tCurrency} ${transaction.trnxAmount.decimalFormat()}',
                                          color: transaction.color,
                                        ),
                                        Divider(
                                          height: TAppSize.s0_3,
                                          color: transaction.color,
                                        ),
                                        DetailWidget(
                                          label: TAppStrings.tTransactionDate,
                                          text: TDateUtil.formatDate(
                                            transaction.trnxDate,
                                          ),
                                          color: transaction.color,
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          }
                          // onTap: () => Get.toNamed(
                          //   Routes.TRANSACTION_DETAIL_PAGE,
                          //   arguments: transaction,
                          // ),
                          );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
