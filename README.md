### Nama    : Nyasia Aludra Yasmina

### NPM     : 2206828185

### Kelas   : PBP E

# Tugas 7

## 1. Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter? 

Dalam konteks pengembangan aplikasi Flutter, `StatelessWidget` dan `StatefulWidget` memiliki perbedaan utama dalam hal bagaimana mereka mengelola _state_ atau kondisi:

- **StatelessWidget**: Merupakan _widget_ yang tidak akan pernah berubah. `StatelessWidget` dibangun hanya dengan konfigurasi yang telah diinisiasi sejak awal. Misalnya, jika kita membuat aplikasi berisi teks dengan kata “Hello World” dan aplikasi kita tidak memiliki fungsi untuk merubah kata tersebut, maka yang digunakan adalah `StatelessWidget`.
- **StatefulWidget**: Merupakan _widget_ yang dapat berubah-ubah secara dinamis. Jika dianalogikan, `StatefulWidget` seperti sebuah teko yang berisi air, namun air tersebut bisa berubah-ubah. Misalnya, kita membuat sebuah aplikasi dimana jika setiap kita memencet icon “+”, angka yang ada di tengah tampilan akan bertambah satu.

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

- `Material`: _Widget_ ini digunakan untuk memberikan latar belakang material design pada elemen-elemen yang ditampilkan. Dalam tugas ini, digunakan untuk memberikan warna latar belakang pada _card_.

- `InkWell`: Ini adalah _widget_ yang memberikan area yang responsif terhadap sentuhan. Ketika pengguna menyentuhnya, itu akan memicu tindakan yang ditentukan. Pada tugas ini, digunakan untuk menampilkan Snackbar ketika _card_ diklik.

- `SnackBar`: _Widget_ ini digunakan untuk menampilkan pesan sementara (biasanya pesan notifikasi) di bagian bawah layar saat suatu tindakan dilakukan, seperti saat kartu diklik. `Snackbar` ini menampilkan pesan "Kamu telah menekan tombol {item.name}".

- `Container`: Digunakan untuk mengelompokkan _widget_ lain dalam satu kotak dengan properti seperti _padding_.

- `Icon`: _Widget_ ini digunakan untuk menampilkan ikon, dan kita dapat mengatur ikon dan properti seperti warna dan ukuran ikon.

- `Text`: _Widget_ ini digunakan untuk menampilkan teks dengan properti seperti warna dan gaya teks.

- `Column`: Digunakan untuk mengelompokkan _widget_ dalam susunan vertikal, sehingga ikon dan teks dalam kartu ditempatkan secara vertikal.

- `GridView.count`: _Widget_ ini digunakan untuk membuat tata letak grid dengan jumlah kolom yang ditentukan. Di sini, digunakan untuk menampilkan _card_ dalam tata letak grid dengan tiga kolom.

- `Scaffold`: _Widget_ ini digunakan untuk membuat struktur dasar untuk halaman, termasuk `AppBar` dan `body`. Ini memberikan kerangka kerja yang mengelola navigasi, tombol kembali, dan banyak fitur lainnya yang umum dalam aplikasi Flutter.

- `AppBar`: _Widget_ ini digunakan untuk membuat _App bar_ di bagian atas layar yang menampilkan judul aplikasi.

- `SingleChildScrollView`: _Widget_ ini digunakan untuk mengelola _layout_ yang dapat di-_scroll_, sehingga konten dapat di-_scroll_ jika terlalu panjang.

- `Padding`: Digunakan untuk memberikan jarak antara widget-widget dalam _layout_.

## 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
