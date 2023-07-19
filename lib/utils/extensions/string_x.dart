import 'package:e_spp/utils/extensions/date_time_x.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  /// Format No HP to 62 ${628912345678}
  String extTo62Format() {
    if (substring(0, 3) == '+62') return substring(1);
    if (this[0] == '0') return '62${substring(1)}';
    if (substring(0, 2) == '62') return this;
    return '62$this';
  }

  String extToCapitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String extToTitleCase() {
    if (isEmpty) return '';
    if (length <= 1) return toUpperCase();

    // Split string into multiple words
    final List<String> words = toLowerCase().split(' ');

    // Capitalize first letter of each words
    final capitalizedWords = words.map(
      (word) {
        if (word.trim().isNotEmpty) {
          final String firstLetter = word.trim().substring(0, 1).toUpperCase();
          final String remainingLetters = word.trim().substring(1);
          return '$firstLetter$remainingLetters';
        }
        return '';
      },
    );

    // Join/Merge all words back to one String
    return capitalizedWords.join(' ');
  }

  /// Default format 'yyyy-MM-dd'
  DateTime extToDateTime({String? originFormatDate}) {
    try {
      var res = DateFormat(originFormatDate ?? 'yyyy-MM-dd').parse(this);
      return res;
    } catch (e) {
      var res = DateTime.tryParse(this);
      if (res == null) return DateTime.now();
      return res;
    }
  }

  /// Default format 'dd-MM-yyyy'
  String extToCustomFormattedDate({
    String? outputDateFormat,
    String originFormatDate = 'yyyy-MM-dd',
  }) {
    DateTime temp = extToDateTime(
      originFormatDate: originFormatDate,
    );
    return temp.extToFormattedString(
        outputDateFormat: outputDateFormat ?? 'dd-MM-yyyy');
  }

  String extReplaceSpecialCharacter() {
    return replaceAll("ā", "a")
        .replaceAll("ḥ", "h")
        .replaceAll("Ā", "a")
        .replaceAll("'", "")
        .replaceAll("ū", "u")
        .replaceAll("ī", "i")
        .replaceAll("Ḥ", "h")
        .replaceAll("Ṭ", "t")
        .replaceAll("ṣ", "s")
        .replaceAll("ṭ", "t")
        .replaceAll("Ṣ", "s")
        .replaceAll("Ż", "z")
        .replaceAll("ż", "z")
        .replaceAll("ṡ", "s")
        .replaceAll(" ", "")
        .replaceAll("-", "");
  }

  String extGetInitialWord() {
    List<String> temp = split(' ');

    List<String> res = [];

    temp.forEach((element) {
      if (res.length < 2) {
        res.add(
          '${element[0].toUpperCase()}',
        );
      }
    });
    return '${res.join('')}';
  }

  String extRemoveHtmlTags() {
    RegExp exp = RegExp(
      r"<[^>]*>",
      multiLine: true,
      caseSensitive: true,
    );

    return replaceAll(exp, '');
  }
}
