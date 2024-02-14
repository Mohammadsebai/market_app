// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:market/app.dart';
import 'package:market/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  // Ensure Flutter is initialized before Firebase

/// Widgets Binding

/// -- Getx Local Storage 



 /// -- Initialize Firebase & Authentication Repository



  
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

    );
  }
}

