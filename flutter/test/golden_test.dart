import 'package:djibouti_plate/djibouti_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens('dj', DjiboutiCountry.djibouti, <String, PlateGoldenCase>{
    'current': (DjiboutiPlates.standard, DjiboutiThemes.current, '683 D 30'),
    'legacy': (DjiboutiPlates.standard, DjiboutiThemes.legacy, '683 D 30'),
  });
}
