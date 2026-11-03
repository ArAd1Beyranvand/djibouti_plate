FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Djibouti to view examples:

https://platexample.ir/#/discover/djibouti:flutter

# djibouti_plate

Djibouti's licence plates for plate_core. Includes themes, alphabets and an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/djibouti_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/djibouti:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/djibouti_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/djibouti:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/djibouti_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/djibouti:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/djibouti_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/djibouti:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  djibouti_plate: ^0.1.0
```

### Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:djibouti_plate/djibouti_plate.dart';

PlateCanvas(
  spec: DjiboutiPlates.standard,
  theme: DjiboutiThemes.current,
  validator: const DjiboutiValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Specs

Each spec is one plate layout.

- `DjiboutiPlates.standard` — id `dj.standard`

## Themes

- `DjiboutiThemes.current`
- `DjiboutiThemes.legacy`

## Change it

`PlateCanvas` takes `spec:` (an entry of `DjiboutiPlates`) and `theme:` (an entry of `DjiboutiThemes`). Set `validator:` to `DjiboutiValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `DjiboutiCountry` — the country panel.
- `DjiboutiValidator` — the plate validator.

## Plates

Djibouti's plate: `NNN D NN`, Latin left and its Arabic mirror right.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/djibouti_plate/blob/main/LICENSE).
