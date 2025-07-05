import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsPalette {
  static const Color lightGreen = Color(0xFFD4D7B7);
  static const Color basicGreen = Color(0xFFAEBE7C);
  static const Color darkGreen = Color(0xFF697431);
  static const Color oceanGreen = Color(0xFF42705C);
  static const Color blackGreen = Color(0xFF15282F);
  static const Color swampGreen = Color(0xFF1C5440);
}

class WidgetStyles {

  static const Color lightGreenBackground = ColorsPalette.lightGreen;
  static const Color mediumGreenEntry = ColorsPalette.basicGreen;
  static const Color darkerGreenFAB = ColorsPalette.darkGreen;
  static const Color blackColor = Colors.black;
  static const Color black54Color = Colors.black54;
  static const Color headerGreen = ColorsPalette.basicGreen;


  static const TextStyle appBarTitleStyle = TextStyle(
    color: ColorsPalette.blackGreen,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle entryTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorsPalette.blackGreen,
  );

  static const TextStyle entryDateStyle = TextStyle(
    fontSize: 14,
    color: ColorsPalette.blackGreen,
  );

  // Box Decorations
  static BoxDecoration entryBoxDecoration = BoxDecoration(
    color: mediumGreenEntry,
    borderRadius: BorderRadius.circular(10.0),
  );

  static BoxDecoration fabDecoration = BoxDecoration(
    color: darkerGreenFAB,
    borderRadius: BorderRadius.circular(15.0),
  );

  // Icon Placeholder Styles (for the fishing icon)
  static BoxDecoration fishingIconContainerDecoration = BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10.0),
  );

  static BoxDecoration fishingIconTopLeftDecoration = BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.circular(5.0),
  );

  static BoxDecoration fishingIconBottomRightDecoration = BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(5.0),
  );
}

class AppTheme {
  static OutlineInputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: ColorsPalette.swampGreen),
  );

  static ThemeData get theme {
    return ThemeData(
      primaryColor: ColorsPalette.basicGreen,
      scaffoldBackgroundColor: ColorsPalette.lightGreen,
      colorScheme: ColorScheme.light(
        primary: ColorsPalette.basicGreen,
        secondary: ColorsPalette.lightGreen,
      ),

      appBarTheme: AppBarTheme(
        toolbarHeight: 115,
        backgroundColor: ColorsPalette.lightGreen,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.openSans(
          fontSize: 24,
          color: ColorsPalette.blackGreen,
          fontWeight: FontWeight.w800,
        ),
      ),

      textTheme: TextTheme(
        bodySmall: TextStyle(color: ColorsPalette.blackGreen, fontSize: 12),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsPalette.basicGreen,
          foregroundColor: ColorsPalette.blackGreen,
          alignment: Alignment.center,
          elevation: 2,
          shadowColor: Colors.black.withValues(alpha: 0.4),
          fixedSize: Size(244, 60),
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            color: ColorsPalette.blackGreen,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
