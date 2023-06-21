import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:fbn_app/presentation/resources/app_dimens.dart';
import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final String label;
  final String text;
  final Color color;
  const DetailWidget(
      {Key? key, required this.label, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TAppPadding.p0, vertical: TAppPadding.p20),
      decoration: const BoxDecoration(
        color: TAppColors.tTransparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style:
                Theme.of(context).textTheme.bodyMedium, //?.apply(color: color),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
