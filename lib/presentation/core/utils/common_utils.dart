import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

String convertDateFromString(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return formatDate(date, [
    dd,
    ' ',
    MM,
    ' ',
    yyyy,
  ]);
}

String convertToDateFormatDisplay(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return formatDate(date, [
    dd,
    ' ',
    MM,
    ' ',
    yyyy,
  ]);
}

String displayDayAndDate(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return DateFormat('yMMMMEEEEd').format(date);
}

String convertToDateTimeLog(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return formatDate(date, [
    dd,
    ' ',
    MM,
    ', ',
    yyyy,
  ]);
}

String convertToDateTimeFormatDisplay(String strDate) {
  var dateTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(strDate, true);
  var timeLocal = dateTime.toLocal();
  return formatDate(timeLocal, [dd, ' ', MM, ' ', yyyy, ', ', HH, ':', mm]);
}

String convertFormatDefaultDate(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return formatDate(date, [
    yyyy,
    '-',
    mm,
    '-',
    dd,
  ]);
}

String getDateFromDateTime(String strDate) {
  DateTime date = DateTime.parse(strDate);

  return date.day.toString();
}

String getYearFromDateTime(String strDate) {
  DateTime date = DateTime.parse(strDate);

  return date.year.toString();
}

String getNameOfDay(String strDate) {
  DateTime date = DateTime.parse(strDate);
  return DateFormat('EEE').format(date);
}

String getRelativeDate(int timestamp) {
  var dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  return timeago.format(dateTime, locale: 'id');
}

String getDate(DateTime d) {
  var date = DateTime(d.year, d.month, d.day);
  return formatDate(date, [
    yyyy,
    '-',
    mm,
    '-',
    dd,
  ]);
}

int getResendTime(int time) {
  var timeNowEpoch = DateTime.now();
  var canResentOtp = DateTime.fromMillisecondsSinceEpoch(time * 1000);

  return canResentOtp.difference(timeNowEpoch).inSeconds;
}

String formatTimeSpent(int totalSeconds) {
  int hours = totalSeconds ~/ 3600;
  int minutes = ((totalSeconds / 60) % 60).toInt();

  final hoursString = '$hours'.padLeft(2, '0');
  final minutesString = '$minutes'.padLeft(2, '0');
  return '$hoursString:$minutesString';
}

String formatTimeSpentSeconds(int totalSeconds) {
  int hours = totalSeconds ~/ 3600;
  int minutes = ((totalSeconds / 60) % 60).toInt();
  int seconds = totalSeconds % 60;

  final hoursString = '$hours'.padLeft(2, '0');
  final minutesString = '$minutes'.padLeft(2, '0');
  final secondsString = '$seconds'.padLeft(2, '0');
  return '$hoursString:$minutesString:$secondsString';
}

int getTimeEpochFromString(String time) {
  var dateTime = DateFormat('HH:mm').parse(time, true);
  return dateTime.millisecondsSinceEpoch ~/ 1000;
}

String getMonth(int monthInNumber) {
  var index = monthInNumber - 1;
  var months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  return months[index];
}

String formatPrice(int? value) {
  return value.toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.');
}

String formatStringPrice(String value) {
  final String result = value.substring(0, value.indexOf('.'));
  return result.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.');
}

int getDateTimeStamp(String time) {
  var dateTime = DateFormat('yyyy-MM-dd').parse(time, true);
  return dateTime.millisecondsSinceEpoch ~/ 1000;
}

Future<void> launchGmeet(String link) async {
  if (await canLaunchUrl(Uri.parse(link))) {
    await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
  }
}

Future<void> launchMap(String lat, String lng, String label) async {
  final String url;

  if (Platform.isIOS) {
    url = 'https://maps.apple.com/?q=${Uri.encodeFull(label)}&sll=$lat,$lng';
  } else {
    url = 'geo:$lat,$lng?q=${Uri.encodeFull(label)}';
  }
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }
}

String? truncatePhoneNumber(String? number) {
  if (number == null) return number;

  if (number.startsWith('0')) {
    return number.substring(1);
  }
  if (number.startsWith('62')) {
    return number.substring(2);
  }
  if (number.startsWith('+62')) {
    return number.substring(3);
  }
  return number;
}

String? formatPhoneNumber(String? number) {
  if (number == null) return number;

  if (number.startsWith('0')) return '+62${number.substring(1)}';
  if (number.startsWith('62')) return '+$number';

  return '+62$number';
}

bool isFree(String price) {
  return price == '0' || price == '0.00';
}

String? getOnlyFewWords(String sentence, int length) {
  List<String> words = sentence.split(' ');
  List<String> fewWords = words.take(length).toList();
  return fewWords.join(' ');
}

String trimLongName(String name, int maxLength) {
  if (name.length <= maxLength) {
    return name;
  } else {
    return name.substring(0, maxLength - 3) + '...';
  }
}
