import 'package:flutter/material.dart';
import 'package:herstel/module/auth/login_notifier.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginNotifier(context),
      child: Consumer<LoginNotifier>(
        builder: (context, value, child) => const Scaffold(),
      ),
    );
  }
}
