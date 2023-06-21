import 'package:intl/intl.dart';

class TDateUtil {
  static String formatDate(String date) {
    List dateList = date.split('-');
    int day = int.parse(dateList[0]);
    int month = int.parse(dateList[1]);
    int year = int.parse(dateList[2]);
    DateTime dateTime = DateTime(year, month, day);
    return DateFormat.yMMMEd().format(dateTime);
  }
}
