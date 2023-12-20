import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_flutter/reponsive/mobilelayout.dart';
import 'package:insta_flutter/reponsive/reponsive_layout.dart';
import 'package:insta_flutter/reponsive/weblayout.dart';
import 'package:insta_flutter/utils/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyA4ScviSPHkVtGnywVOoJYeQ3Jb0cmsfvY',
            appId: 'com.example.insta_flutter',
            messagingSenderId: '164316109129',
            projectId: 'socail-app-7071f'));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
          mobilescreenlayout: mobilelayout(), webscreenlayout: Weblayout()),
    );
  }
}
