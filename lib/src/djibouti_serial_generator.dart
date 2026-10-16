import 'dart:math';

import 'package:plate_core/plate_core.dart';

/// Plausible values for fixtures and demos: three digits, `D`, two digits.
abstract final class DjiboutiSerialGenerator {
  static List<String?> generate(PlateSpec spec, {Random? random}) {
    final Random rnd = random ?? Random();
    String digits(int n) =>
        (1 + rnd.nextInt(pow(10, n).toInt() - 1)).toString().padLeft(n, '0');
    return <String?>[digits(3), 'D', digits(2)];
  }
}
