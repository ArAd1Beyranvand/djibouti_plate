import 'dart:math';

import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'djibouti_country.dart';

/// Where the ink sits, in millimetres, measured off the 1990s artwork
/// (`Djibouti_license_plate_graphic_1990s`) flattened to 520×110.
///
/// * Latin `683D30`: six cells, ink x 15.8..241.5, pitch 38.9 (cell centres
///   31.3 .. 225.6), ink y 18.8..96.
/// * Divider: x 255.5..261.2, y 11.5..99.8. It floats clear of the plate edge,
///   so it is a [PlateRule], not a section.
/// * Arabic `٣٠ ج ٦٨٣`: six cells, ink x 273.5..499, pitch 38.7 (centres 290 ..
///   482.5), ink y 19..96.5. Read right to left it is the Latin value, so
///   the cells echo sources 4, 5, 3, 0, 1, 2.
///
/// **Under-height ink, accepted.** The ink is 77 mm tall; `glyphStyle` gives
/// ~0.53 of the slot, so 77 would need a 145 mm slot on a 110 mm plate. The
/// slot is the full canvas height and the ink comes out ~75% of reference.
///
/// Not implemented: the FE-Schrift / Square Kufic faces (the theme's face is
/// used); the plate prints no flag. The article gives no other categories.
abstract final class _Layout {
  static const double width = 520;
  static const double height = 110;

  static const double pitch = 38.9;
  static const double latinLeft = 31.3 - pitch / 2;
  static const double arabicLeft = 290 - pitch / 2;

  static const double slotTop = 0;
  static const double slotHeight = height;

  static const PlateBox divider = PlateBox(255.5, 11.5, 5.7, 88.3);
}

/// Djibouti's plate: `NNN D NN`, Latin left and its Arabic mirror right.
abstract final class DjiboutiPlates {
  static final double _spacing = max(0, _Layout.pitch - 0.6 * 0.72 * _Layout.slotHeight);

  static PlateMirror _mirror(int source, int firstCell, int count, PlateAlphabet alphabet) =>
      PlateMirror(
        source: source,
        box: PlateBox(
          _Layout.arabicLeft + firstCell * _Layout.pitch,
          _Layout.slotTop,
          count * _Layout.pitch,
          _Layout.slotHeight,
        ),
        glyphHeight: _Layout.slotHeight,
        alphabet: alphabet,
        editable: true,
      );

  static final PlateSpec standard = PlateSpec(
    id: 'dj.standard',
    country: DjiboutiCountry.djibouti,
    canvasWidth: _Layout.width,
    canvasHeight: _Layout.height,
    noPanel: true,
    panel: const PlatePanel(box: PlateBox(0, 0, 0, _Layout.height)),
    slots: <PlateSlot>[
      PlateSlot(
        alphabet: DjiboutiAlphabets.digits,
        box: PlateBox(_Layout.latinLeft, _Layout.slotTop, 3 * _Layout.pitch, _Layout.slotHeight),
        length: 3,
        spacing: _spacing,
      ),
      PlateSlot(
        alphabet: DjiboutiAlphabets.letter,
        box: PlateBox(
          _Layout.latinLeft + 3 * _Layout.pitch,
          _Layout.slotTop,
          _Layout.pitch,
          _Layout.slotHeight,
        ),
      ),
      PlateSlot(
        alphabet: DjiboutiAlphabets.digits,
        box: PlateBox(
          _Layout.latinLeft + 4 * _Layout.pitch,
          _Layout.slotTop,
          2 * _Layout.pitch,
          _Layout.slotHeight,
        ),
        length: 2,
        spacing: _spacing,
      ),
    ],
    rules: const <PlateRule>[PlateRule(box: _Layout.divider)],
    mirrors: <PlateMirror>[
      _mirror(2, 0, 2, DjiboutiAlphabets.iranshahrDigits),
      _mirror(1, 2, 1, DjiboutiAlphabets.letterArabic),
      _mirror(0, 3, 3, DjiboutiAlphabets.iranshahrDigits),
    ],
    textGroups: const <PlateTextGroup>[
      PlateTextGroup(<int>[0], key: 'number'),
      PlateTextGroup(<int>[1], key: 'letter'),
      PlateTextGroup(<int>[2], key: 'code'),
    ],
  );
}
