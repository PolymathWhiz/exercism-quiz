import 'package:exercism/exercism.dart' as exercism;

import '../lib/exercism.dart';

void main(List<String> arguments) {
  final phoneNumber = '613-995-0253';

  var nanpParser = NanpParser(phoneNumber);

  print(nanpParser.showNumber);
}
