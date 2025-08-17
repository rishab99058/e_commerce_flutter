import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  /* -- Light Theme -- */
  static final lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusSm),
    ),
    side: const BorderSide(color: TColors.secondary),
    checkColor: WidgetStateProperty.all<Color>(TColors.white),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.secondary; // checked state
        }
        return Colors.transparent; // unchecked state
      },
    ),
  );

  /* -- Dark Theme -- */
  static final darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.borderRadiusSm),
    ),
    side: const BorderSide(color: TColors.white),
    checkColor: WidgetStateProperty.all<Color>(TColors.black),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.white; // checked state in dark mode
        }
        return Colors.transparent; // unchecked state
      },
    ),
  );
}
