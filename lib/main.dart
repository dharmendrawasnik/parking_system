import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/DateTimeProvider.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>DateTimeProvider())
        ],
    child: MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen()));
  }
}
