import 'package:flutter/material.dart';
import 'package:herstel/module/auth/login_notifier.dart';
import 'package:herstel/module/auth/login_wigdet.dart';
import 'package:herstel/utils/image_path.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginNotifier(context),
      child: Consumer<LoginNotifier>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.grey[300],
          body: Stack(
            children: [
              Center(
                child: Container(
                  color: Colors.blue,
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width > 600
                      ? 400
                      : double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 0,
                          child: CustomPaint(
                            painter: BackgroudLoginPage(),
                          )),
                      Positioned(
                          top: 160,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160,
                                width: 160,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        color: Colors.grey,
                                        blurRadius: 10,
                                      )
                                    ]),
                                child: Image.asset(
                                  ImageAssets.logo,
                                  height: 98,
                                ),
                              ),
                              const SizedBox(
                                height: 32,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "Cari Tukang Cukur Disini",
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      ImageAssets.google,
                                      height: 20,
                                    ),
                                    const Center(
                                      child: Text("Google akun"),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Positioned(
                          top: 32,
                          left: 16,
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
