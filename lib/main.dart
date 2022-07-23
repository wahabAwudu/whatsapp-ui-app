import 'package:flutter/material.dart';
import 'package:new_app/colors.dart';
import 'package:new_app/responsive/layout.dart';
import 'package:new_app/screens/mobile_screen_layout.dart';
import 'package:new_app/screens/web_screen_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
    );
  }
}

void main() => runApp(const MyApp());
