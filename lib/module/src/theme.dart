    import 'package:flutter/material.dart';

const primaryColor  = Color(000000);
final themeData = ThemeData(
    dividerTheme: DividerThemeData(
        color: Colors.grey.withOpacity(0.1),

    ),
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
        titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
        )
    )

);