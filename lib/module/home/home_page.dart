import 'package:flutter/material.dart';
import 'package:herstel/module/home/home_notifier.dart';
import 'package:herstel/utils/image_path.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeNotifier(context),
      child: Consumer<HomeNotifier>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                  child: ListView(
                padding: const EdgeInsets.all(8),
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    height: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageAssets.logo,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.red),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              hintStyle: const TextStyle(fontSize: 12),
                              hintText: "cari produk"),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView(
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: 180,
                        child: PageView(
                          controller: PageController(viewportFraction: 0.8),
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              child: Image.asset(
                                ImageAssets.banner1,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              child: Image.asset(
                                ImageAssets.banner2,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              child: Image.asset(
                                ImageAssets.banner3,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              child: Image.asset(
                                ImageAssets.banner4,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => value.gantiMenu(0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: value.menu == 0
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                                Text(
                                  "home",
                                  style: TextStyle(
                                    color: value.menu == 0
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => value.gantiMenu(1),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.abc,
                                  color: value.menu == 1
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                                Text(
                                  "home",
                                  style: TextStyle(
                                    color: value.menu == 1
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => value.gantiMenu(2),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.multiline_chart,
                                  color: value.menu == 2
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                                Text(
                                  "home",
                                  style: TextStyle(
                                    color: value.menu == 2
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () => value.gantiMenu(3),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.aspect_ratio,
                                  color: value.menu == 3
                                      ? Colors.black
                                      : Colors.grey,
                                ),
                                Text(
                                  "home",
                                  style: TextStyle(
                                    color: value.menu == 3
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
