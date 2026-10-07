import 'package:plate_core/plate_core.dart';

/// Judges a Djibouti registration: three digits, the letter `D`, two digits
/// (`683 D 30`). The article gives no format table, so this is the one
/// reference plate; it reports and never bars a keystroke.
class DjiboutiValidator extends GatedPlateValidator {
  const DjiboutiValidator();

  @override
  String get gateGroup => 'code';

  static const String reasonNumber = 'The number is three digits.';
  static const String reasonLetter = 'The letter is D.';
  static const String reasonCode = 'The code is two digits.';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (!isDigitsOfLength(entry.group('number'), 3)) {
      return const PlateValidation.invalid(reasonNumber);
    }
    if (entry.group('letter') != 'D') {
      return const PlateValidation.invalid(reasonLetter);
    }
    if (!isDigitsOfLength(entry.group('code'), 2)) {
      return const PlateValidation.invalid(reasonCode);
    }
    return const PlateValidation.valid();
  }
}
