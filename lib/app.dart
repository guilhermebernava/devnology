import 'package:devnology/screens/home/home.dart';
import 'package:devnology/screens/splash/splash.dart';
import 'package:devnology/themes/app_color.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devnology',
      theme: ThemeData(
        primarySwatch: AppMaterialColor.materialColor,
      ),
      home: const Splash(),
      routes: {
        Home.route: (context) => const Home(),
      },
    );
  }
}
