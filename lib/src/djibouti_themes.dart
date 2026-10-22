import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'djibouti_colors.dart';

/// The two liveries. The artwork has no rim, so the border is zero.
abstract final class DjiboutiThemes {
  static PlateTheme _livery(Color field, Color ink, Color inactive) => PlateTheme(
    plateBackground: field,
    plateBorder: field,
    ink: ink,
    dividerColor: ink,
    borderWidthRatio: 0.0,
    plateRadiusRatio: 0.045,
    activeColor: ink,
    inactiveColor: inactive,
    alertColor: const Color(0xFFD32F2F),
  );

  /// Black on white: the plate issued since 2023, per the article's lead.
  static final PlateTheme current = _livery(
    DjiboutiColors.white,
    DjiboutiColors.black,
    DjiboutiColors.inactiveOnLight,
  );

  /// Grey on black, as the pre-2023 artwork is drawn (sampled).
  static final PlateTheme legacy = _livery(
    DjiboutiColors.black,
    DjiboutiColors.artworkInk,
    DjiboutiColors.inactiveOnDark,
  );
}
