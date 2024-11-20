import 'package:flutter/material.dart';
import 'package:tokobirumerah/models/pesanan_entry.dart';

class DetailPesananPage extends StatelessWidget {
  final PesananEntry pesanan;

  const DetailPesananPage({super.key, required this.pesanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Nama: ${pesanan.fields.pesanan}",
              style: const TextStyle(
                fontSize: 24.0, // Ukuran teks lebih besar
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16), // Jarak antar elemen
            Text(
              "Deskripsi: ${pesanan.fields.keterangan}",
              style: const TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center, // Pusatkan teks jika panjang
            ),
            const SizedBox(height: 16),
            Text(
              "Quantitas: ${pesanan.fields.quantitas}",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16),
            Text(
              "Harga: Rp. 20.000",
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16),
            Text(
              "Tanggal Pesanan: ${pesanan.fields.time}",
              style: const TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
