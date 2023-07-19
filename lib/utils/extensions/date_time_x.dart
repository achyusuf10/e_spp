import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// Default format 'yyyy-MM-dd'
  String extToFormattedString({String outputDateFormat = 'yyyy-MM-dd'}) {
    return DateFormat(outputDateFormat)
        .format(this)
        .replaceAll(
          'January',
          'Januari',
        )
        .replaceAll(
          'February',
          'Februari',
        )
        .replaceAll(
          'March',
          'Maret',
        )
        .replaceAll(
          'April',
          'April',
        )
        .replaceAll(
          'May',
          'Mei',
        )
        .replaceAll(
          'June',
          'Juni',
        )
        .replaceAll(
          'July',
          'Juli',
        )
        .replaceAll(
          'August',
          'Agustus',
        )
        .replaceAll(
          'September',
          'September',
        )
        .replaceAll(
          'October',
          'Oktober',
        )
        .replaceAll(
          'November',
          'November',
        )
        .replaceAll(
          'December',
          'Desember',
        );
  }

//Default format HH:mm
  String extToTimeString(String? formatToTime) {
    return DateFormat(formatToTime ?? "HH:mm").format(this);
  }
}
