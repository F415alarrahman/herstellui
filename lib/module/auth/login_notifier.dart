import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:herstel/cache/pref.dart';
import 'package:herstel/models/index.dart';
import 'package:herstel/module/auth/registrasi_page.dart';
import 'package:herstel/module/menu/menu_page.dart';
import 'package:herstel/network/network.dart';
import 'package:herstel/repository/auth_repository.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class LoginNotifier extends ChangeNotifier {
  final BuildContext context;

  LoginNotifier(this.context);

  TextEditingController email = TextEditingController();
  final keyFrom = GlobalKey<FormState>();

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: <String>[
    'email',
    'https"//www.googleapis.com/auth/contacts.readonly'
  ]);

  cek() {
    if (keyFrom.currentState!.validate()) {
      simpan();
    }
  }

  UserModel? users;
  simpan() {
    AuthRepository.login(NetworkUrl.login(), email.text.trim()).then((value) {
      if (value['status code'] == 200) {
        users = UserModel.fromJson(value);
        Pref().setUsers(users!);
        notifyListeners();
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegistrasiPage()));
      }
    });
  }

  handleGoogleSignIn() async {
    //CustomDialog.loading(context);
    UserCredential userCredential;
    final GoogleSignInAccount? gooleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await gooleUser!.authentication;
    final googleAuthCredential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    userCredential = await auth.signInWithCredential(googleAuthCredential);
    if (kDebugMode) {
      print(userCredential.user!.displayName);
      print(userCredential.user!.photoURL);
      print(userCredential.user!.providerData[0].email);
    }

    AuthRepository.login(
            NetworkUrl.login(), userCredential.user!.providerData[0].email!)
        .then((value) {
      if (value['status_code'] == 200) {
        users = UserModel.fromJson(value);
        Pref().setUsers(users!);
        notifyListeners();
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MenuPage()),
            (route) => false);
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegistrasiPage()));
      }
    });
  }
}
