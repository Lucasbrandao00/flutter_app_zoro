import 'package:flutter/material.dart';
import 'package:flutter_application/app_controller.dart';
import 'package:flutter_application/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppController.instance.isdartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
