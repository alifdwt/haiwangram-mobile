import 'package:flutter/material.dart';
import 'package:haiwangram_mobile/pages/home_page.dart';
import 'package:haiwangram_mobile/pages/intro_page.dart';
import 'package:haiwangram_mobile/pages/login_page.dart';
import 'package:haiwangram_mobile/themes/light_mode.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WakelockPlus.enable();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/login_page': (context) => LoginPage(onTap: () {}),
        '/home_page': (context) => const HomePage(),
      },
    );
  }
}
