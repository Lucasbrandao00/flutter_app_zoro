import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isdartTheme = false;
  changeTheme() {
    isdartTheme = !isdartTheme;
    notifyListeners();
  }
}
