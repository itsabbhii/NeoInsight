import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neoinsight/IntroPage.dart';
import 'package:neoinsight/SplashScreen.dart';
import 'package:neoinsight/TumorsPage.dart';
import 'package:neoinsight/homepage.dart';
import 'TumorDescription.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // or any color you prefer
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.greenAccent, // AppBar background color
          shadowColor: Colors.green,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 254, 247, 255), // Set the status bar color to white
            statusBarIconBrightness: Brightness.dark, // Dark icons for white status bar
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Color.fromARGB(100, 153, 193, 218)
          , // The global highlight color
        ),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        '/tumors_page': (context) => const TumorsPage(),
        '/intro_page':(context) => const IntroPage(),
        '/home_page': (context) => const Homepage(),
        '/tumor1': (context) => const Tumor1(),
        '/tumor2': (context) => const Tumor2(),
        '/tumor3': (context) => const Tumor3(),
        '/tumor5': (context) => const Tumor5(),
        '/tumor6': (context) => const Tumor6(),
        '/tumor7': (context) => const Tumor7(),
        '/tumor8': (context) => const Tumor8(),
        '/tumor9': (context) => const Tumor9(),
        '/tumor10': (context) => const Tumor10(),
        '/tumor11': (context) => const Tumor11(),
        '/tumor12': (context) => const Tumor12(),
        '/tumor13': (context) => const Tumor13(),
        '/tumor14': (context) => const Tumor14(),
        '/tumor15': (context) => const Tumor15(),
        '/tumor16': (context) => const Tumor16(),
        '/tumor17': (context) => const Tumor17(),
        '/tumor18': (context) => const Tumor18(),
        '/tumor19': (context) => const Tumor19(),
        '/tumor20': (context) => const Tumor20(),
        '/tumor21': (context) => const Tumor21(),
        '/tumor22': (context) => const Tumor22(),
        '/tumor23': (context) => const Tumor23(),
        '/tumor24': (context) => const Tumor24(),
        '/tumor25': (context) => const Tumor25(),
        '/tumor26': (context) => const Tumor26(),
        '/tumor27': (context) => const Tumor27(),
        '/tumor28': (context) => const Tumor28(),
        '/tumor29': (context) => const Tumor29(),
        '/tumor30': (context) => const Tumor30(),

      },
    );
  }
}



