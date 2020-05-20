class NanpParser {
  final String number;

  final regex =
      RegExp(r'^\(?([2-9][0-9]{2})\)?[-]?([2-9](?!11)[0-9]{2})[-]?([0-9]{4})$');

  final FIRST_SEQ = '+1';

  NanpParser([this.number = '']);

  String get normalizeNumber {
    return number
        .replaceAll(RegExp(r'[^\s\w]'), '')
        .replaceAll(RegExp(r'\s+\b|\b\s'), '');
  }

  bool get isValid {
    return regex.hasMatch(normalizeNumber) ? true : false;
  }
}
