import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:tokobirumerah/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:tokobirumerah/screens/menu.dart';

class PesananEntryFormPage extends StatefulWidget {
  const PesananEntryFormPage({super.key});

  @override
  State<PesananEntryFormPage> createState() => _PesananEntryFormPageState();
}

class _PesananEntryFormPageState extends State<PesananEntryFormPage> {
        final _formKey = GlobalKey<FormState>();
        String _pesanan = "";
        String _deskripsi = "";
        int _quantitas = 0;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tambah Pesanan, Yuk!',
            style: TextStyle(
                  fontWeight: FontWeight.w900,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.black,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Pesanan",
                    labelText: "Pesanan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _pesanan = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Pesanan tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _deskripsi = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Quantitas",
                    labelText: "Quantitas",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _quantitas = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Quantitas tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Quantitas harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                          // Kirim ke Django dan tunggu respons
                          // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                          final response = await request.postJson(
                              "http://127.0.0.1:8000/create-flutter/",
                              jsonEncode(<String, String>{
                                  'pesanan': _pesanan,
                                  'quantitas': _quantitas.toString(),
                                  'deskripsi': _deskripsi,
                              // TODO: Sesuaikan field data sesuai dengan aplikasimu
                              }),
                          );
                          if (context.mounted) {
                              if (response['status'] == 'success') {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                  content: Text("Mood baru berhasil disimpan!"),
                                  ));
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => MyHomePage()),
                                  );
                              } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                      content:
                                          Text("Terdapat kesalahan, silakan coba lagi."),
                                  ));
                              }
                          }
                      }
                  },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.black),
                    ),
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