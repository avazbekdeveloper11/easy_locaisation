import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi".tr()),
      ),
      body: Center(
        child: Column(
          children: [
            Text("welcome".tr()),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale("uz",));
              },
              child: Text("uz"),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale("en"));
              },
              child: Text("en"),
            )
          ],
        ),
      ),
    );
  }
}
