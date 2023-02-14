import 'package:flutter/material.dart';
import 'package:herstel/module/auth/registrasi_notifier.dart';
import 'package:provider/provider.dart';

class RegistrasiPage extends StatelessWidget {
  const RegistrasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegistrasiNotifier(context),
      child: Consumer<RegistrasiNotifier>(
        builder: (context, value, child) => SafeArea(
            child: Scaffold(
          body: Form(
            key: value.keyfrom,
            child: ListView(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: value.email,
                  validator: (e) {
                    if (e!.isEmpty) {
                      return "email wajib di isi";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: value.phone,
                  validator: (e) {
                    if (e!.isEmpty) {
                      return "phone wajib di isi";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: value.nama_legkap,
                  validator: (e) {
                    if (e!.isEmpty) {
                      return "nama wajib di isi";
                    } else {
                      return null;
                    }
                  },
                ),
                InkWell(
                  onTap: () => value.cek(),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black),
                    child: const Text(
                      "simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
