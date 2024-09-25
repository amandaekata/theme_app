import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  AppColorExtension({required this.background, required this.primary});
  final Color primary;
  final Color background;

  @override
  ThemeExtension<AppColorExtension> copyWith(
      {Color? primary, Color? background}) {
    return AppColorExtension(
        background: background ?? this.background,
        primary: primary ?? this.primary);
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
        background: Color.lerp(background, other.background, t)!,
        primary: Color.lerp(primary, other.primary, t)!);
  }
}
