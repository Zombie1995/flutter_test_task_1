part of '../theme.dart';

ThemeData iosTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF6F6F9),
    primarySwatch: createMaterialColor(const Color(0xFF828796)),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xFF828796),
      selectionColor: Color(0xFF828796),
      selectionHandleColor: Color(0xFF828796),
    ),
    inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        floatingLabelStyle: iosTextTheme.bodyMedium!.apply(
          color: const Color(0xFFA9ABB7),
          fontWeightDelta: -2,
          fontSizeDelta: -0.9,
        ),
        labelStyle: iosTextTheme.bodyMedium!.apply(
          color: const Color(0xFFA9ABB7),
          fontWeightDelta: -1,
          fontSizeDelta: 1,
        ),
        hintStyle: iosTextTheme.bodyMedium!.apply(
          color: const Color(0xFFA9ABB7),
          fontWeightDelta: -1,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        )),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll<Color>(
          Color.fromRGBO(0, 0, 0, 0.025),
        ),
        foregroundColor: const MaterialStatePropertyAll<Color>(
          Colors.white,
        ),
        textStyle: MaterialStatePropertyAll<TextStyle>(
          iosTextTheme.bodyMedium!.apply(
            color: Colors.white,
            fontWeightDelta: -1,
          ),
        ),
        minimumSize: const MaterialStatePropertyAll<Size>(Size.fromHeight(56)),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(
          Color(0xFF0D72FF),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
    ),
    useMaterial3: true,
    textTheme: iosTextTheme,
  );
}
