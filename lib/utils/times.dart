import 'package:intl/intl.dart';

class Times {
  ///
  //Digital month to English abbreviation
  ///
  static String numberMonth2NamedMonth(
      String numberedMonth, {
        bool abbreviation = true,
      }) {
    if (numberedMonth == '1' || numberedMonth == '01') {
      return abbreviation ? 'JAN' : 'January';
    } else if (numberedMonth == '2' || numberedMonth == '02') {
      return abbreviation ? 'FEB' : 'February';
    } else if (numberedMonth == '3' || numberedMonth == '03') {
      return abbreviation ? 'MAR' : 'March';
    } else if (numberedMonth == '4' || numberedMonth == '04') {
      return abbreviation ? 'APR' : 'April';
    } else if (numberedMonth == '5' || numberedMonth == '05') {
      return abbreviation ? 'MAY' : 'May';
    } else if (numberedMonth == '6' || numberedMonth == '06') {
      return abbreviation ? 'JUN' : 'June';
    } else if (numberedMonth == '7' || numberedMonth == '07') {
      return abbreviation ? 'JUL' : 'July';
    } else if (numberedMonth == '8' || numberedMonth == '08') {
      return abbreviation ? 'AUG' : 'August';
    } else if (numberedMonth == '9' || numberedMonth == '09') {
      return abbreviation ? 'SEP' : 'September';
    } else if (numberedMonth == '10') {
      return abbreviation ? 'OCT' : 'October';
    } else if (numberedMonth == '11') {
      return abbreviation ? 'NOV' : 'November';
    } else if (numberedMonth == '12') {
      return abbreviation ? 'DEC' : 'December';
    } else {
      return 'UNKOWN';
    }
  }

  static String timestamp2String(int timestamp,
      {String format = 'yyyy-MM-dd hh:mm:ss'}) {
    return DateFormat(format).format(
      DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
  }

  static String time2period(DateTime time) {
    String format = 'HH';
    int hour = int.parse(DateFormat(format).format(time));
    if (hour > 6 && hour < 12) {
      return 'morning';
    } else if (hour >= 12 && hour < 18) {
      return 'afternoon';
    } else {
      return 'evening';
    }
  }

  static String currentPeriod() {
    String format = 'HH';
    int hour = int.parse(DateFormat(format).format(DateTime.now()));
    if (hour > 6 && hour < 12) {
      return 'morning';
    } else if (hour >= 12 && hour < 18) {
      return 'afternoon';
    } else {
      return 'evening';
    }
  }


  //Current month and date
  static String currentNamedMonthDay() {
    final now = DateTime.now();
    final namedMonth = numberMonth2NamedMonth(
      now.month.toString(),
      abbreviation: false,
    );
    return '$namedMonth ${now.day}';
  }

  /// Relative to today's date (today, yesterday, etc.)
  static String relativeDate(DateTime time) {
    final now = DateTime.now();
    final difference = now.day - time.day;
    if (difference == 0) {
      return 'TODAY';
    } else if (difference == 1) {
      return 'YESTERDAY';
    } else {
      return '$difference DAYS AGO';
    }
  }
}