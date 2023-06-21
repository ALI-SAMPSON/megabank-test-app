import 'package:fbn_app/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Transaction {
  final int customerId;
  final String trnxDate;
  final double trnxAmount;
  final String trnxDirection;
  final String trnxNaration;
  final Color color; // change bg color of item

  Transaction({
    required this.customerId,
    required this.trnxDate,
    required this.trnxAmount,
    required this.trnxDirection,
    required this.trnxNaration,
    required this.color,
  });
}

List<Transaction> transactionList = [
  Transaction(
    customerId: 23399922,
    trnxDate: '01-02-2021',
    trnxAmount: 10000,
    trnxDirection: 'C',
    trnxNaration: 'Deposit',
    color: TAppColors.tPurple,
  ),
  Transaction(
    customerId: 23399922,
    trnxDate: '01-02-2021',
    trnxAmount: 1000,
    trnxDirection: 'D',
    trnxNaration: 'Withdrawal',
    color: TAppColors.tPrimary,
  ),
  Transaction(
    customerId: 23399922,
    trnxDate: '01-02-2021',
    trnxAmount: 1500,
    trnxDirection: 'C',
    trnxNaration: 'Inflow',
    color: TAppColors.tBlue,
  ),
  Transaction(
    customerId: 23399922,
    trnxDate: '01-02-2021',
    trnxAmount: 50,
    trnxDirection: 'D',
    trnxNaration: 'Gift',
    color: TAppColors.tSecondary,
  ),
];
