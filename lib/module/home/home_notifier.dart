import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier {
  final BuildContext context;

  HomeNotifier(this.context);
  int menu = 0;
  gantiMenu(int index) {
    menu = index;
    notifyListeners();
  }
}
