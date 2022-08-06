part of 'themes.dart';

ThemeData light = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      secondary: secondary,
      surface: Colors.white,
      background: secondary,
      error: Colors.red,
      onBackground: Colors.white,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: secondary,
    ),
    visualDensity: VisualDensity.standard,
    canvasColor: secondary,
    textTheme: textTheme,
    tabBarTheme: TabBarTheme(
      labelColor: primary,
      unselectedLabelColor: accentGrey,
      labelStyle: basedFont.copyWith(fontSize: 16),
      indicator: const ShapeDecoration(
        shape: UnderlineInputBorder(
            borderSide:
                BorderSide(color: primary, width: 3, style: BorderStyle.solid)),
        // gradient: LinearGradient(colors: [Color(0xff0081ff), Color(0xff01ff80)])
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 20),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: primary,
      titleTextStyle:
          textTheme.headline1!.copyWith(fontSize: 20, color: Colors.white),
    ));

ThemeData dark = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: primary,
      secondary: secondaryDark,
      surface: Colors.white,
      background: secondaryDark,
      error: Colors.red,
      onBackground: Colors.white,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: secondaryDark,
    ),
    visualDensity: VisualDensity.standard,
    canvasColor: secondaryDark,
    textTheme: textThemeDark,
    tabBarTheme: TabBarTheme(
      labelColor: primary,
      unselectedLabelColor: accentGrey,
      labelStyle: basedFont.copyWith(fontSize: 16),
      indicator: const ShapeDecoration(
        shape: UnderlineInputBorder(
            borderSide:
                BorderSide(color: primary, width: 3, style: BorderStyle.solid)),
        // gradient: LinearGradient(colors: [Color(0xff0081ff), Color(0xff01ff80)])
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle:
          textTheme.headline1!.copyWith(fontSize: 20, color: Colors.white),
    ));
