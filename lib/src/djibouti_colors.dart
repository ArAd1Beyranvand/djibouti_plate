import 'package:flutter/widgets.dart';

/// Only the grey ink and black field are sampled (1990s artwork, modal
/// pixels). No image of the current black-on-white plate exists, so [white]
/// and [black] are plain.
abstract final class DjiboutiColors {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  /// Ink on the artwork's black field: modal pixel C0C0C0.
  static const Color artworkInk = Color(0xFFC0C0C0);

  /// Flag light blue (`#6ab2e7` in the Wikimedia SVG), for hosts.
  static const Color flagBlue = Color(0xFF6AB2E7);

  static const Color inactiveOnDark = Color(0xFF8A8A8A);
  static const Color inactiveOnLight = Color(0xFFB0B0B0);
}
