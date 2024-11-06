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