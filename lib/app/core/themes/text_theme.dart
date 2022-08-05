part of 'themes.dart';

const basedFont = TextStyle(color: textColorBlack, fontFamily: 'Nunito');
const basedFontDark = TextStyle(color: Colors.white, fontFamily: 'Nunito');

final TextTheme textTheme = TextTheme(
  headline1: basedFont.copyWith(
      color: textColorBlue,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -1.5),

  headline2: basedFont.copyWith(
    color: textColorBlue,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  ),
  headline3: basedFont.copyWith(fontSize: 48, fontWeight: FontWeight.w400),
  headline4: basedFont.copyWith(
      color: primary, fontSize: 34, fontWeight: FontWeight.w800),
  headline5: basedFont.copyWith(fontSize: 24, fontWeight: FontWeight.w400),
  headline6: basedFont.copyWith(
      fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: basedFont.copyWith(
      color: primary,
      fontSize: 18, fontWeight: FontWeight.w400,),
  // subtitle2: basedFont.copyWith(
  //     fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: basedFont.copyWith(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: basedFont.copyWith(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: basedFont.copyWith(
      fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 1.25),
  caption: basedFont.copyWith(
      fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.4),
  // overline: basedFont.copyWith(
  //     fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

final TextTheme textThemeDark = TextTheme(
  headline1: basedFont.copyWith(
      color: textColorBlue,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -1.5),

  headline2: basedFont.copyWith(
    color: textColorBlue,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  ),
  // headline3: basedFont.copyWith(fontSize: 48, fontWeight: FontWeight.w400),
  // headline4: basedFont.copyWith(
  //     fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  // headline5: basedFont.copyWith(fontSize: 24, fontWeight: FontWeight.w400),
  // headline6: basedFont.copyWith(
  //     fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: basedFont.copyWith(
      fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  // subtitle2: basedFont.copyWith(
  //     fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: basedFont.copyWith(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: basedFont.copyWith(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: basedFont.copyWith(
      fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 1.25),
  caption: basedFont.copyWith(
      fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 0.4),
  overline: basedFont.copyWith(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
