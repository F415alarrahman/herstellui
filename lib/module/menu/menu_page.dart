import 'package:flutter/material.dart';
import 'package:herstel/module/home/home_page.dart';
import 'package:herstel/module/menu/barbershop_page.dart';
import 'package:herstel/module/menu/menu_notifier.dart';
import 'package:herstel/module/menu/order_page.dart';
import 'package:herstel/module/menu/user_profil_page.dart';
import 'package:herstel/utils/image_path.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MenuNotifier(context),
      child: Consumer<MenuNotifier>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.grey,
          body: Stack(
            children: [
              Center(
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width > 600
                      ? 400
                      : double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: value.page == 0
                              ? const HomePage()
                              : value.page == 1
                                  ? const BarbrshopPage()
                                  : value.page == 2
                                      ? const OrderPage()
                                      : const UserProfilPgae())
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width > 600
                          ? 400
                          : double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                                height: 60,
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: InkWell(
                                            onTap: () {
                                              value.gantipage(0);
                                            },
                                            child: Image.asset(ImageAssets.home,
                                                height: 26,
                                                color: value.page == 0
                                                    ? const Color.fromARGB(
                                                        255, 22, 22, 22)
                                                    : Colors.white))),
                                    Expanded(
                                        child: InkWell(
                                            onTap: () {
                                              value.gantipage(1);
                                            },
                                            child: Image.asset(
                                              ImageAssets.barbershop,
                                              height: 26,
                                              color: value.page == 1
                                                  ? const Color.fromARGB(
                                                      255, 22, 22, 22)
                                                  : Colors.white,
                                            ))),
                                    Expanded(
                                        child: InkWell(
                                            onTap: () => value.gantipage(2),
                                            child: Image.asset(
                                              ImageAssets.order,
                                              height: 26,
                                              color: value.page == 2
                                                  ? const Color.fromARGB(
                                                      255, 22, 22, 22)
                                                  : Colors.white,
                                            ))),
                                    Expanded(
                                        child: InkWell(
                                            onTap: () => value.gantipage(3),
                                            child: Image.asset(
                                              ImageAssets.userprofile,
                                              height: 26,
                                              color: value.page == 3
                                                  ? const Color.fromARGB(
                                                      255, 22, 22, 22)
                                                  : Colors.white,
                                            ))),
                                  ],
                                )),
                          ),
                          Center(
                            child: Container(
                              width: 60,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color.fromARGB(255, 22, 22, 22),
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 22, 22, 22),
                                  )),
                              child: Image.asset(
                                ImageAssets.qrcode,
                                height: 26,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
