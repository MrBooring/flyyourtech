import 'package:flutter/material.dart';
import 'package:flytech/controllers/binders/initialBindings.dart';
import 'package:flytech/view/homepage.dart';
import 'package:get/get.dart';

import 'util/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      getPages: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1F51FF)).copyWith(
          primary: Color(0xFF1F51FF),
        ),
        useMaterial3: true, // recommended for seed-based theming
      ),
    );
  }
}
