import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:djibouti_plate/djibouti_plate.dart';

void main() => runApp(
  PlateExampleApp(spec: DjiboutiPlates.standard, theme: DjiboutiThemes.current),
);
