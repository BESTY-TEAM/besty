import 'package:besty/screens/home.dart';
import 'package:besty/theme.dart';
import 'package:flutter/material.dart';

void main() {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
     runApp(const MyApp());
  //});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BESTY',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
