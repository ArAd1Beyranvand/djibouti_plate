FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Djibouti to view examples:

https://platexample.ir/#/discover/djibouti

# djibouti_plate

Djibouti's licence plates for the `plate_core` library. The one plate Djibouti's article documents: a Latin number and its Arabic mirror, black on white (2023) or grey on black (legacy), with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  djibouti_plate: ^0.1.0
```

## Use

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

## Contains

- `DjiboutiCountry` — country panel: `djibouti`.
- `DjiboutiPlates` — 1 plate spec: `standard`.
- `DjiboutiThemes` — 2 themes: `current`, `legacy`.
- `DjiboutiValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `DjiboutiSerialGenerator` — random plate generator.

## Plates

Djibouti's plate: `NNN D NN`, Latin left and its Arabic mirror right.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

