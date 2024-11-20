import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:tokobirumerah/models/pesanan_entry.dart';
import 'package:tokobirumerah/widgets/left_drawer.dart';
import 'package:provider/provider.dart';
import 'package:tokobirumerah/screens/detail_pesanan_page.dart';

class PesananEntryPage extends StatefulWidget {
  const PesananEntryPage({super.key});

  @override
  State<PesananEntryPage> createState() => _PesananEntryPageState();
}

class _PesananEntryPageState extends State<PesananEntryPage> {
  Future<List<PesananEntry>> fetchPesanan(CookieRequest request) async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    final response = await request.get('http://127.0.0.1:8000/json/');
    
    // Melakukan decode response menjadi bentuk json
    var data = response;
    
    // Melakukan konversi data json menjadi object PesananEntry
    List<PesananEntry> listPesanan = [];
    for (var d in data) {
      if (d != null) {
        listPesanan.add(PesananEntry.fromJson(d));
      }
    }
    return listPesanan;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Pesanan'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchPesanan(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada data pesanan pada Toko Biru Merah.',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    // Navigasi ke halaman detail
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPesananPage(
                          pesanan: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama: ${snapshot.data![index].fields.pesanan}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Deskripsi: ${snapshot.data![index].fields.keterangan}"),
                        const SizedBox(height: 10),
                        Text("Quantitas: ${snapshot.data![index].fields.quantitas}"),
                        const SizedBox(height: 10),
                        Text("Harga: Rp. 20.000"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.time}"),
                      ],
                    ),
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}