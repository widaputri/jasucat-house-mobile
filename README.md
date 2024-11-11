# Jasucat House

## Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- **Stateless Widget** adalah widget yang tidak memiliki state atau kondisi yang dapat berubah selama runtime. Sekali dibuat, widget ini tidak akan berubah; jika ada perubahan yang diperlukan, widget harus dibuat ulang dari awal. Contoh widget stateless dalam Flutter adalah `Text`, `Icon`, dan `Container`.

- **Stateful Widget** adalah widget yang memiliki state, memungkinkan perubahan tampilan atau perilaku tanpa harus membuat ulang widget tersebut. `StatefulWidget` biasanya digunakan ketika tampilan membutuhkan pembaruan dinamis, seperti perubahan teks, warna, atau animasi, yang tergantung pada tindakan pengguna atau perubahan data.

**Perbedaan utama**:
  - **Stateless**: Tidak dapat berubah saat runtime. Cocok untuk tampilan yang tidak memerlukan interaksi atau perubahan.
  - **Stateful**: Dapat berubah saat runtime. Cocok untuk tampilan dinamis yang bergantung pada input atau data yang bisa berubah.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: Widget utama yang membungkus aplikasi, memberikan tema dan pengaturan navigasi dasar.
- **Scaffold**: Struktur utama halaman yang menyediakan kerangka dasar seperti AppBar dan body.
- **AppBar**: Menyediakan bar atas dengan judul aplikasi.
- **Center**: Menempatkan widget di tengah layar.
- **Column**: Menyusun widget dalam satu kolom vertikal.
- **ElevatedButton.icon**: Tombol dengan ikon dan label. Dalam proyek ini, digunakan untuk menampilkan tiga tombol utama (Lihat Daftar Produk, Tambah Produk, Logout).
- **SnackBar**: Komponen untuk menampilkan pesan sementara di bagian bawah layar.
- **ScaffoldMessenger**: Mengelola tampilan dan pengelolaan `SnackBar` di halaman yang sedang aktif.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` adalah metode yang digunakan dalam `StatefulWidget` untuk memperbarui state dan menyebabkan tampilan widget melakukan rebuild dengan state terbaru. Ketika `setState()` dipanggil, Flutter akan merender ulang bagian UI yang terkait dengan state yang diubah.

Contoh variabel yang terdampak oleh `setState()` meliputi variabel-variabel yang mengontrol tampilan dinamis seperti warna, teks, atau posisi, yang berubah berdasarkan aksi pengguna atau peristiwa lainnya.

### Jelaskan perbedaan antara const dengan final.
- **const**: Digunakan untuk nilai yang konstan secara kompilasi (compile-time constant), yang artinya nilainya ditentukan saat kompilasi dan tidak akan berubah. `const` biasa digunakan untuk nilai konstan yang diketahui sebelum runtime.
- **final**: Digunakan untuk nilai yang ditentukan hanya sekali saat runtime. Nilai `final` bisa tidak diketahui saat kompilasi, tetapi setelah diberikan nilai pada runtime, nilainya tidak bisa diubah lagi.
Contohnya:
```dart
const int maxLimit = 10; // Nilai diketahui di waktu kompilasi
final DateTime now = DateTime.now(); // Nilai ditentukan di runtime, hanya sekali
```

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Menggunakan `flutter create jasucat_house` untuk menginisiasi proyek. Memisahkan file `main.dart` dan `menu.dart` untuk menerapkan *clean architecture*.
#### Membuat tiga tombol sederhana dengan ikon dan teks untuk:
- Melihat daftar produk (Lihat Daftar Produk)
- Menambah produk (Tambah Produk)
- Logout (Logout)

Masing-masing menggunakan widget `ElevatedButton.icon`.
#### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
Mengganti parameter `style` dari `ElevatedButton.icon` dan memodifikasi property `backgroundColor` sesuai dengan makna semantik tiap tombol.
#### Memunculkan Snackbar dengan tulisan:
- "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
- "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
- "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

Mendefinisikan fungsi `_showSnackbar(context, message)` yang akan dijalankan ketika user menekan tombol yang sesuai.

Berikut salah satu buttonnya
```dart
ElevatedButton.icon(
              icon: const Icon(Icons.list),
              label: const Text("Lihat Daftar Produk"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 179, 216, 245), // mengganti warna
              ),
              onPressed: () {
                _showSnackbar(context, "Kamu telah menekan tombol Lihat Daftar Produk"); // menampilkan snackbar
              },
            ),
```


## Tugas 8
###  Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Dalam Flutter, `const` adalah kata kunci penting yang membuat variabel atau objek menjadi immutable, sehingga meningkatkan konsistensi, kinerja, dan efisiensi penggunaan memori. Penggunaan `const` dianjurkan saat nilai tidak akan berubah selama aplikasi berjalan, seperti string konstan, angka, atau widget yang tidak berubah, karena akan mengoptimalkan compile-time konstanta. Namun, `const` sebaiknya tidak digunakan saat nilai perlu diubah selama aplikasi berjalan, seperti data dari API atau pengguna, atau jika Anda tidak yakin nilai akan tetap konstan.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column dan Row adalah dua layout widget utama dalam Flutter yang menyusun elemen-elemen secara vertikal dan horizontal. Column berguna untuk menyusun elemen seperti teks, gambar, atau tombol dari atas ke bawah, sementara Row berguna untuk menyusun elemen secara sejajar dari kiri ke kanan, seperti pada tombol atau ikon. Perbedaan utama adalah arah penyusunan, dan masing-masing memiliki properti yang dapat diatur, seperti `mainAxisAlignment` dan `crossAxisAlignment`, untuk mengontrol posisi dan alignment elemen-elemen. Pemilihan antara Column atau Row tergantung pada kebutuhan desain aplikasi, dengan Column cocok untuk susunan vertikal dan Row untuk susunan horizontal.

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada halaman form yang saya buat untuk tugas ini, saya menggunakan beberapa elemen input Flutter, yaitu TextFormField untuk input dengan validasi, dan ElevatedButton untuk tombol submit. Selain elemen-elemen tersebut, ada beberapa elemen input lain yang tidak saya gunakan, seperti Dropdown untuk input pilihan, CheckboxListTile dan RadioListTile untuk input pilihan, Slider untuk input angka, dan DateTimeField untuk input tanggal dan waktu. Pemilihan elemen input yang digunakan dalam tugas ini disesuaikan dengan kebutuhan fungsionalitas form, dengan fokus pada input teks dengan validasi dan pengiriman data, pilihan multiple, atau input tanggal/waktu yang lebih kompleks. Namun, Flutter menyediakan berbagai macam elemen input yang dapat digunakan sesuai dengan kebutuhan desain dan fungsionalitas aplikasi.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Dalam aplikasi Flutter yang saya buat, saya telah mengatur tema menggunakan ThemeData di dalam MaterialApp. Saya menetapkan warna dasar (seed color) sebagai `const Color.fromARGB(255, 212, 132, 33)`, yang menjadi acuan untuk warna-warna lain yang dihasilkan oleh `ColorScheme.fromSeed()`, serta mengaktifkan penggunaan Material Design 3 dengan `useMaterial3: true`. Ini memastikan bahwa seluruh aplikasi memiliki tampilan dan gaya yang konsisten, karena semua widget yang menggunakan Material Design akan menyesuaikan warna dan gaya berdasarkan tema yang telah ditetapkan. Selain pengaturan warna dasar, saya juga dapat mengatur properti lain dalam ThemeData seperti gaya teks, ikon, tombol, app bar, dan input field untuk menciptakan identitas visual yang lebih kuat dan kohesif pada aplikasi.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk menangani navigasi pada aplikasi Flutter dengan banyak halaman, kita dapat menggunakan berbagai pendekatan, seperti MaterialPageRoute untuk transisi yang halus, Named Routes untuk memudahkan perpindahan antar halaman, PageView untuk halaman yang dapat digeser, dan BottomNavigationBar atau TabBar untuk menyediakan navigasi utama yang mudah diakses. Di aplikasi saya, saya menggunakan MaterialPageRoute. 