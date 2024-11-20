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

## Tugas 9
1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
   > Membuat model untuk pengambilan atau pengiriman dat JSON menjadi penting karena JSON memiliki struktur data yang konsisten dan kompleks, sehingga kita bisa merepresentasikan data secara eksplisit dalam bentuk objek Dart. Lalu, JSON juga memudahkan parsing dan manipluasi, sehingga proses serialisasi dan deserialisasi lebih mudah. Tetapi jika kita tidak membuat model untuk pengambilan atau pengiriman data JSON, sebenarnya tidak selalu akan terjadi error, tetapi ada beberapa resiko yang dihadapi, contohnya adalah kesalahan tipe data.

2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
   > Singkatnya, fungsi dari library HTTP adalah untuk berinteraksi dengan API. Pada tugas ini, HTTP digunakan untuk mendapatkan data dari server maupun mengirim data dari server. Jadi, HTTP digunakan untuk data JSON dari server Django, memprosesnay, dan menampilkannya pada aplikasi Flutter.

3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
   > CookieRequest berfungsi untuk menangani otentikasi dan pengelolaan sesi dalam sebuah aplikasi Flutter. Library ini seringkali digunakan bila kita ingin mengintegrasikan Flutter dan Django. Instance dari sebuah CookieRequest perlu dibagikan ke semua komponen, hal ini karena untuk memastikan konsistensi otentikasi, dan memudahkan akses data dalam sebuah apliakasi. Dengan membagikan instance-nya, maka itu membuat pengelolaan cookie dan sesi jadi terpusat.

4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
   > Proses pengiriman data dari input bisa didefinikan melalui langkah-langkah berikut. Pertama, pengguna akan menginput data melalui antarmuka. Lalu, setelah pengguna menginput data, maka aplikasi akan mengirim data tersebut ke server (backend) menggunakan library HTTP. Lalu, data akan diproses di backend (dalam tugas ini Django). Lalu, data akan disimpan di database, Lalu, data akan diambil dari database dengan sebuah method GET. Lalu, data yang diambil (berupa JSON) akan dideserialisasi menjadi objek Dart. Setelah itu, terakhir tinggal menampilkannya ke dalam antar muka.

5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
   > Otentikasi pada proses register bisa didefinisikan sebagai langkah-langkah berikut. Pertama, proses pada Flutter akan menginput data dari pengguna, dan setelahnya akan dikirim ke endpoint Django menggunakan HTTP POST dalam format JSON. Di Django, data akan diterima dan divalidasi, bila validasi berhasil, maka akun akan terbuat, dan Django akan mengirim respon sukses ke Flutter. Lalu, pada Flutter, akan ditunjukkan pesan sukses atau gagal dan akan mengarahkan pengguna ke halaman login, bila gagal, akan ditambilkan respon error.
   
   > Otentikasi pada proses login bisa didefinisikan sebagai langkah-langkah berikut. Pertama, Flutter akan menginput data pengguna dan akan dikirim ke server (Django). Lalu, pada DJango, akan melakukan proses otentikasi dengan "authenticate" untuk memvalidasi input. Bila otentikasi berhasil, maka Django akan membuat sesi dan menyimpan cookie otentikasi dan detail pengguna. Pada Flutter, cookie akan disimpan oleh CookieRequest berdasarkan respon Django, dan menavigasi pengguna ke halaman utama.

   > Otentikasi pada proses logout bisa didefinisikan sebagai langkah-langkah berikut. Pertama, Flutter akan mengirim permintaan logout ke Django. Lalu, Django akan menghapus sesi dan cookie pengguna dan mengirimkan respon sukses. Lalu pada Flutter, cookie akan dihapus oleh CookieRequest dan menavigasi kembali ke halaman login.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
   > Pertama, integrasikanlah projek Django yang sudah dibuat sebelumnya pada paruh pertama server dengan projek Flutter yang sekarang sedang dikembangkan, pada tugas kali ini adalah sistem otentikasi. Lalu, buatlah sebuah model yang menyesuaikan data JSON, pada tugas ini dipermudah dengan website Quicktype. Lalu, buatlah sebuah mekanisme untuk melakukan fetch data dari Django untuk Flutter. Lalu, integrasikan juga formulir Flutter dengan layanan Django. Sisanya adalah mengkonfigurasikan fitur register, login, dan logout pada Flutter dengan memanfaatkan langkah-langkah yang sudah dilakukan sebelumnya.