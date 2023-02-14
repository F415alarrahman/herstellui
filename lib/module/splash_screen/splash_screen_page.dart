import 'package:flutter/material.dart';
import 'package:herstel/module/splash_screen/splash_screen_notifier.dart';
import 'package:herstel/utils/image_path.dart';
import 'package:provider/provider.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SplashScreenNotifier(context),
      child: Consumer<SplashScreenNotifier>(
        builder: (context, value, child) => Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.logo,
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Herstel studio",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 44, 153, 204)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const CircularProgressIndicator(
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
