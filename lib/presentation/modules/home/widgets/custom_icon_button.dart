import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:fbn_app/presentation/resources/app_dimens.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Color bgColor;
  final String label;
  final IconData icon;
  const CustomIconButton(
      {Key? key,
      required this.bgColor,
      required this.label,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          elevation: TAppElevation.e0,
          backgroundColor: bgColor,
          padding: const EdgeInsets.symmetric(
              horizontal: TAppPadding.p28, vertical: TAppPadding.p10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TAppSize.s8),
          )),
      onPressed: () {},
      icon: Icon(
        icon,
        size: TAppSize.s20,
        color: TAppColors.tBlack,
      ),
      label: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.apply(color: TAppColors.tBlack),
      ),
    );
  }
}
