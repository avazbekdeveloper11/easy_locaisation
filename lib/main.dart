import 'package:easy_localization/easy_localization.dart';
import 'package:esasy_localisation_/screens/home_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("en"),
        Locale("uz"),
      ],
      startLocale: Locale("uz"),
      fallbackLocale: const Locale("uz"),
      path: "assets/lang",
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy localisation',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales, 
      locale: context.locale,
      home: HomePage(),
    );
  }
}
