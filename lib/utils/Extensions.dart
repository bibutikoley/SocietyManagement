import 'dart:math';

extension StringExtensions on String {
  static const _validRandomChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  String randomStringWithLimit(int length) {
    return String.fromCharCodes(Iterable.generate(
        length,
            (_) => _validRandomChars
            .codeUnitAt(Random().nextInt(_validRandomChars.length))));
  }

}