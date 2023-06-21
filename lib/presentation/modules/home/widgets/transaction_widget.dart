import 'package:fbn_app/domain/transaction.dart';
import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:fbn_app/presentation/resources/app_dimens.dart';
import 'package:fbn_app/presentation/resources/app_strings.dart';
import 'package:fbn_app/util/date_util.dart';
import 'package:fbn_app/util/ext_fxns.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
    required this.transaction,
    required this.onTap,
  });

  final Transaction transaction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: TAppPadding.p12),
        decoration: BoxDecoration(
          color: TAppColors.tWhite,
          borderRadius: BorderRadius.circular(TAppSize.s8),
          boxShadow: TAppColors.tShadowList,
        ),
        child: ListTile(
          leading: Container(
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
          title: Text(transaction.trnxNaration,
              style: Theme.of(context).textTheme.bodyLarge),
          subtitle: Text(
              TDateUtil.formatDate(
                transaction.trnxDate,
              ),
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.apply(color: TAppColors.tGrey)),
          trailing: Text(
            '-${TAppStrings.tCurrency} ${transaction.trnxAmount.decimalFormat()}',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.apply(color: transaction.color),
          ),
        ),
      ),
    );
  }
}
