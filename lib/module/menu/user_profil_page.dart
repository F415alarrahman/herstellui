import 'package:flutter/material.dart';
import 'package:herstel/module/menu/user_profil_notifier.dart';
import 'package:provider/provider.dart';

class UserProfilPgae extends StatelessWidget {
  const UserProfilPgae({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProfilNotifier(context),
      child: Consumer<UserProfilNotifier>(
        builder: (context, value, child) => const Scaffold(
          body: Center(
            child: Text("ini bagian dari user profil"),
          ),
        ),
      ),
    );
  }
}
