import 'package:easy_localization/easy_localization.dart';
import 'package:esasy_localisation_/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en", "EN"),
        Locale("uz", "UZ"),
      ],
      path: "assets/lang/",
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Easy localisation',
      home: HomePage(),
    );
  }
}
