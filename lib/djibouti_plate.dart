/// Djibouti's licence plates for the `plate_core` library.
///
/// The one plate Djibouti's article documents: a Latin number and its Arabic
/// mirror, black on white (2023) or grey on black (legacy), with an advisory
/// validator.
library;

// TODO(py): [D5] one module `plates.countries.djibouti`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/djibouti`; tree-shakable.
// TODO(kt): [D5] package `countries.djibouti` in the countries module.
export 'src/djibouti_colors.dart';
export 'src/djibouti_country.dart';
export 'src/djibouti_plates.dart';
export 'src/djibouti_serial_generator.dart';
export 'src/djibouti_themes.dart';
export 'src/djibouti_validators.dart';
export 'package:plate_alphabet/plate_alphabet.dart' show DjiboutiAlphabets;
