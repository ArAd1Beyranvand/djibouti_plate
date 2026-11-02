import 'package:plate_core/plate_core.dart';

import 'djibouti_colors.dart';

/// Djibouti as a `PlateCountry`. The plate prints no flag or country name, so
/// the spec sets `noPanel`; this is for hosts that list countries.
abstract final class DjiboutiCountry {
  static const PlateCountry djibouti = PlateCountry(
    code: 'dj',
    captionLines: <String>[],
    panelColor: DjiboutiColors.flagBlue,
    panelTextColor: DjiboutiColors.white,
  );
}
