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

  /*
 * This method checks the current state of the number and tries to work on it.
 * If the number is null, it returns a string error message
 * @return <String> Correct Number 
 */
  String get showNumber {
    return isValid ? normalizeNumber : parseNumber(number);
  }

  String parseNumber(String val) {
    if (val.isEmpty) {
      return 'Number cannot be empty';
    } else if (val.length == 11 && val.substring(1) == '1') {
      return val.substring(1);
    } else if (val.substring(0, 2) == FIRST_SEQ) {
      return normalizeNumber.substring(1);
    } else {
      return normalizeNumber.substring(1);
    }
  }
}
