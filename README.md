# Toko Biru Merah Mobile

## Tugas 7
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   > Stateless widget dan stateful widget adalah 2 komponen dasar untuk membangun user interface, tetapi keduanya memiliki perbedaan dalam penanganan data dan tampilannya.
      Stateless widget adalah sebuah widget yang tidak memiliki state, berarti widget ini tidak akan berubah selama siklus hidup aplikasi, kecuali bila dipicu oleh struktur
      induknya. Widget ini cocok untuk elemen statis yang tidak memerlukan perubahan tampilan. Sementara stateful widget adalah widget yang memiliki state, berarti widget
      ini bisa berubah selama siklus hidup aplikasi, misalnya dengan interaksi widget dan user. Widget ini cocok untuk elemen dinamis yang perlu render ulang setiap kali
      ada fenomena.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
   > MaterialApp, fungsinya adalah mengatur tema, judul, dan halaman awal aplikasi.
   > Scaffold, fungsinya adalah menyediakan struktur dasar aplikasi, contohnya pada tugas ini adalah AppBar.
   > AppBar, fungsinya adalah section judul pada bagian atas aplikasi.
   > RichText dan TextSpan, fungsinya adalah menampilkan text dengan berbagai gaya.
   > Padding, fungsinya adalah memberi jarak dari sekitar widget dengan tepi luar.
   > Column, fungsinya adalah menyusun widget dari atas ke bawah.
   > Row, fungsinya adalah menyusun widget dari kiri ke kanan.
   > GridView.count, fungsinya adalah membuat tampilan grid dengan jumlah kolom yang tetap.
   > InfoCard, widget ini adalah widget custom yang fungsinya adalah untuk menampilkan judul dan isi.
   > ItemCard, widget ini adalah widget custom yang fungsinya adalah menampilkan item dan teks.
   > Material, fungsinya adalah memberikan efek visual.
   > InkWell, fungsinya adalah membuat area klik di sekitar child-nya, pada tugas ini child-nya adalah SnackBar.
   > Icon, fungsinya adalah menampilkan simbol pada ItemCard.
   > Text, fungsinya adalah menampilkan tulisan.
   > Card, fungsinya adalah menampilkan kotak dengan bayangan yang menyerupai kartu.
   > SnackBar, fungsinya adalah sebagai notifikasi yang sementara kana muncul pada tampilan layar.
   > SizedBox, fungsinya adalah menambahkan ruang kosong dengan ukuran tertentu.
   > Center, fungsinya adalah membuat widget child berada di tengah.
   > MediaQuery, fungsinya adalah mendapatkan informasi tentang ukuran layar dan orientasi.
   > ThemeData dan ColorScheme, fungsinya adalah mengatur tema dan warna aplikasi.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
   > Pada Flutter, setState() adalah sebuah fungsi yang bisa memperbarui tampilan sebuah stateful widget. Jadi ketika dipanggil, setState() akan merender ulang data yang
      berubah. Variabel yang terdampak pada project Flutter ini sebenarnya tidak ada, tetapi yang dapat terdampak contohnya adalah data input, status tampilan kondisional,
      atau tampilan UI suatu halaman.

4. Jelaskan perbedaan antara const dengan final.
   > Final digunakan pada kondisi dimana nilai yang ditetapkan tidak akan berubah di kemudian waktu, dan nilai final tidak harus ada pada saat compile-time, tetapi bisa saja
      pada saat runtime. Sementara const digunakan untuk nilai yang sudah diketahui pada saat compile-time dan juga bersifat tidak akan berubah. Final dan const hanya berbeda
      kondisi penggunaannya saja.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
   > Pertama, lakukanlah instalasi Flutter terlebih dahulu pada device yang digunakan.
   > Lalu, karena saya menggunakan VS Code, saya perlu mengunduh Dart pada ekstensi VS Code.
   > Lalu, buatlah sebuah proyek Flutter baru sesuai nama yang diinginkan.
   > Lalu, rapikanlah struktur proyek dengan menambahkan file menu.dart, agar code bisa lebih mudah dipahami.
   > Lalu, buatlah beberapa widget yang diperlukan, seperti untuk menentukan warna dan menentukan sifat widget (stateless atau stateful).
   > Lalu, buatlah card yang berisi informasi yang diperlukan.
   > Lalu, buatlah tombol yang berisi Icon.
   > Lalu, integrasikanlah InfoCard dan ItemCard pada MyHomePage.
   > Lalu, lakukanlah add, commit, dan push pada GitHub.

## Tugas 8
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
   > Pada FLutter, const digunakan untuk menandai objek menjadi compile-time constant, yaitu sebuah objek yang tidak akan berubah saat aplikasi Flutter berjalan. Karena objek ini tidak akan berubah, maka Flutter hanya akan mengalokasikan objek tersebut satu kali, sehingga hal ini menghemat memori dan meningkatkan performa. Seperti deskripsi kegunaannya, kita sebaiknya menggunakan const pada saat menggunakan stateless widget, dan kita sebaiknya tidak menggunakan const pada saat menggunakan stateful widget.

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
   > Pada Flutter, Column dan Row adalah 2 widget yang digunakan untuk mengatur tata letak. Perbedaan dasar pada penggunaan Column dan Row ada pada tata letak yang diatur, kalau Column, mengatur tata letak secara vertikal, sementara Row mengatur tata letak secara horizontal. Contoh implementasi Column adalah :
   > Column(
      > mainAxisAlignment: MainAxisAlignment.center,
      > crossAxisAlignment: CrossAxisAlignment.start,
      > children: <Widget>[
         > Text('Contoh 1'),
         > Text('Contoh 2'),
         > Text('Contoh 3'),
      > ],
   > );
   > Pada contoh di atas, "Contoh 1", "Contoh 2", "Contoh 3" disusun secara vertikal pada tengah layar.

   > Contoh implementasi Row adalah:
   > Row(
      > mainAxisAlignment: MainAxisAlignment.spaceAround,
      > crossAxisAlignment: CrossAxisAlignment.center,
      > children: <Widget>[
         > Text('Contoh 1'),
         > Text('Contoh 2'),
         > Text('Contoh 3'),
      > ],
   > );
   > Pada contoh di atas, "Contoh 1", "Contoh 2", "Contoh 3" disusun secara horizontal pada tengah layar.

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
   > Pada halaman form yang saya buat pada tugas ini, saya menggunakan 2 jenis elemen input, yaitu TextFormField untuk menginput Pesanan, Deskripsi, dan Quantitas, berdasarkan tipe data yang dibutuhkan masing-masing field, dan saya juga menggunakan ElevatedButton sebagai tombol untuk mengirim data dari form. Ada banyak elemen input Flutter lain yang tidak saya gunakan, yaitu:
    -. DropdownButtonFormField, yang bisa menyediakan pilihan dalam bentuk dropdown.
    -. Checkbox dan Switch, yang bisa digunakan untuk input boolean seperti untuk konfirmasi pesanan.
    -. Slider, yang bisa digunakan untuk memberi nilai dalam rentang tertantu, cocok untuk pemberian rating.
    -. DatePicker, yang bisa digunakan untuk memilih tanggal.

4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
   > Untuk mengatur tema pada aplikasi Flutter secara global, kita bisa menggunakan ThemeData yang bisa diterapkan melalui MaterialApp agar tema pada aplikasi kita bisa konsisten. Ya, saya mengimplementasikan tema pada aplikasi saya, saya tempatkan pada main.dart.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
   > Pada aplikasi saya, saya menggunakan left_drawer.dart untuk mengatur navigasi secara keseluruhan, dengan menggunakan method Navigator.pushReplacement(). Bagaimanapun, saya juga menggunakan Navigator.push() pada file pesanan_card.dart. Dengan ini, navigasi bisa lebih teratur.