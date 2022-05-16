import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HI".tr()),
      ),
      body: Column(
        children: [
          Text("welcome".tr()),
          ElevatedButton(
            onPressed: () {
              context.locale = Locale("uz", "UZ");
            },
            child: Text("uz"),
          ),
          ElevatedButton(
            onPressed: () {
              context.locale = Locale("en", "EN");
            },
            child: Text("en"),
          )
        ],
      ),
    );
  }
}
