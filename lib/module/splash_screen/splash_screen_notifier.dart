import 'package:flutter/material.dart';
import 'package:herstel/cache/pref.dart';
import 'package:herstel/module/menu/menu_page.dart';

class SplashScreenNotifier extends ChangeNotifier {
  final BuildContext context;

  SplashScreenNotifier(this.context) {
    pertama();
  }
  pertama() {
    Pref().getUsers().then((value) {
      print(value.id);
      print(value.namaLengkap);
    });

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MenuPage()),
          (route) => false);
    });
  }
}
