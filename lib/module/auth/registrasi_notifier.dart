import 'package:flutter/material.dart';
import 'package:herstel/cache/pref.dart';
import 'package:herstel/models/index.dart';
import 'package:herstel/module/menu/menu_page.dart';
import 'package:herstel/network/network.dart';
import 'package:herstel/repository/auth_repository.dart';

class RegistrasiNotifier extends ChangeNotifier {
  final BuildContext context;

  RegistrasiNotifier(this.context);

  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController nama_legkap = TextEditingController();

  final keyfrom = GlobalKey<FormState>();

  cek() {
    if (keyfrom.currentState!.validate()) {
      simpan();
    }
  }

  simpan() async {
    AuthRepository.daftar(
      NetworkUrl.registrasi(),
      email.text,
      phone.text,
      nama_legkap.text,
    ).then((value) {
      if (value['status code'] == 200) {
        UserModel users = UserModel.fromJson(value);
        Pref().setUsers(users);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MenuPage()),
            (route) => false);
        notifyListeners();
        print(value["message"]);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MenuPage()));
      }
    });
  }
}
