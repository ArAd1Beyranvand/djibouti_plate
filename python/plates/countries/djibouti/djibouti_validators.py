"""Port of djibouti_plate/lib/src/djibouti_validators.dart. Hand-ported; codegen never overwrites this file."""
from __future__ import annotations

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length


class DjiboutiValidator(GatedPlateValidator):
    gate_group = 'code'

    reason_number = "The number is three digits."
    reason_letter = "The letter is D."
    reason_code = "The code is two digits."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not is_digits_of_length(entry.group("number"), 3):
            return PlateValidation.invalid(self.reason_number)
        if entry.group("letter") != "D":
            return PlateValidation.invalid(self.reason_letter)
        if not is_digits_of_length(entry.group("code"), 2):
            return PlateValidation.invalid(self.reason_code)
        return PlateValidation.valid()
