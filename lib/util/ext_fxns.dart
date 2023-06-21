import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension EmptyPadding on num {
  SizedBox get pw => SizedBox(width: toDouble());
  SizedBox get ph => SizedBox(height: toDouble());
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension NumExtension on double {
  String decimalFormat() {
    return NumberFormat.decimalPattern('en_us').format(this);
  }
}
