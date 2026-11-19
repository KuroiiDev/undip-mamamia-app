import 'package:material_ui/material_ui.dart';

abstract final class AppColors {
  // Lilac (main, background, tint)
  static const lilac50 = Color(0xFFF8F6FE); // background
  static const lilac100 = Color(0xFFEFEAFB); // chip, input, card, tint
  static const lilac200 = Color(0xFFE2D9F8);
  static const lilac300 = Color(0xFFC9BCF0);
  static const lilac500 = Color(0xFF8E78D8); // primary
  static const lilac700 = Color(0xFF6C57B5); // pressed

  // Neutral (text, line, border, surface)
  static const ink = Color(0xFF2E2742); // main
  static const inkSoft = Color(0xFF6E6786); // secondary
  static const inkMuted = Color(0xFF9C97B0); // hint, placeholder, inactive
  static const border = Color(0xFFE4DEF5);
  static const surface = Color(0xFFFFFFFF);

  // Accent (categories, badge, chips, etc)
  static const pink = Color(0xFFF7C5DA);
  static const peach = Color(0xFFFFD9BF);
  static const mint = Color(0xFFBFE9D6);
  static const sky = Color(0xFFC4E0F7);

  // Status
  static const success = Color(0xFF5FBF8F);
  static const warning = Color(0xFFF2B25C);
  static const error = Color(0xFFE0657F);
  static const star = Color(0xFFFFC857); // rating stars
}
