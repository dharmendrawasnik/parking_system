import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostumeColors{



  static const Color primaryColor = Color(0xFFF7D858); // Yellow
  static const Color secondaryColor = Color(0xFF4A90E2); // Blue
  static const Color accentColor = Color(0xFFFF6F61); // Red

  static const Color backgroundColor = Color(0xFFF5F5F5); // Light Gray
  static const Color textColor = Color(0xFF333333); // Dark Gray
  static const Color borderColor = Color(0xFFCCCCCC); // Light Border Gray

  static const Color successColor = Color(0xFF28A745); // Green
  static const Color warningColor = Color(0xFFFFC107); // Orange
  static const Color errorColor = Color(0xFFDC3545); // Red

  static const Color darkBlue = Color(0xFF001F3F); // Navy Blue
  static const Color purple = Color(0xFF6A0DAD); // Purple
  static const Color teal = Color(0xFF20C997); // Teal
  static const Color darkBlack = Color(0xFF212121); // Dark Black (almost black)
  static const Color jetBlack = Color(0xFF0A0A0A); // Jet Black
  static const Color charcoalBlack = Color(0xFF333333); // Charcoal Black
  static const Color onyxBlack = Color(0xFF353535); // Onyx Black
  static const Color pitchBlack = Color(0xFF1C1C1C); // Pitch Black
  static const Color gunmetalBlack = Color(0xFF2A2A2A);





  static final Color shade1 =
  HSLColor.fromColor(primaryColor).withLightness(0.8).toColor();
  static final Color shade2 =
  HSLColor.fromColor(primaryColor).withLightness(0.7).toColor();
  static final Color shade3 =
  HSLColor.fromColor(primaryColor).withLightness(0.6).toColor();
  static final Color shade4 =
  HSLColor.fromColor(primaryColor).withLightness(0.5).toColor();

  static const Color primaryLightColor = Color(0xFFFFE4B5);
  static const Color primaryDarkColor = Color(0xFFFF8C00);




  static const Color surfaceColor = Color(0xFFF5F5F5);


  static const Color textLightColor = Color(0xFF666666);



  static const Color tileColor = Color(0xFFFAFAFA);

  static const Color dividerColor = Color(0xFFE0E0E0);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFFA500), Color(0xFFFF8C00)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


  static const double costumeValue=0.1;
  static const double costumeValue1=0.1;
  static const double costumeValue2=0.1;
  static const double borderRadius=50;
  static const double withOpacity=0.4;
  static const double widgetHeight=550;




}