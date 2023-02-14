import 'package:flutter/material.dart';
import 'package:herstel/module/menu/barbershop_notifier.dart';
import 'package:provider/provider.dart';

class BarbrshopPage extends StatelessWidget {
  const BarbrshopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BarbershopNotifier(context),
      child: Consumer<BarbershopNotifier>(
        builder: (context, value, child) => const Scaffold(
          body: Center(
            child: Text("ini barber galeri"),
          ),
        ),
      ),
    );
  }
}
