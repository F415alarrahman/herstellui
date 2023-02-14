import 'package:flutter/material.dart';
import 'package:herstel/utils/image_path.dart';

class HomeNewPage extends StatelessWidget {
  const HomeNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(),
          ),
          Expanded(
              child: ListView(
            children: [
              SizedBox(
                height: 180,
                child: PageView(
                  children: [
                    Image.asset(ImageAssets.banner1),
                    Image.asset(ImageAssets.banner2),
                    Image.asset(ImageAssets.banner3),
                    Image.asset(ImageAssets.banner4),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
