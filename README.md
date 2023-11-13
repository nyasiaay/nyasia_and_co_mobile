### Nama    : Nyasia Aludra Yasmina

### NPM     : 2206828185

### Kelas   : PBP E

# Tugas 7

## 1. Apa perbedaan utama antara _stateless_ dan _stateful widget_ dalam konteks pengembangan aplikasi Flutter? 

Dalam konteks pengembangan aplikasi Flutter, `StatelessWidget` dan `StatefulWidget` memiliki perbedaan utama dalam hal bagaimana mereka mengelola _state_ atau kondisi:

- **StatelessWidget**: Merupakan _widget_ yang tidak akan pernah berubah. `StatelessWidget` dibangun hanya dengan konfigurasi yang telah diinisiasi sejak awal. Misalnya, jika kita membuat aplikasi berisi teks dengan kata “Hello World” dan aplikasi kita tidak memiliki fungsi untuk merubah kata tersebut, maka yang digunakan adalah `StatelessWidget`.
- **StatefulWidget**: Merupakan _widget_ yang dapat berubah-ubah secara dinamis. Jika dianalogikan, `StatefulWidget` seperti sebuah teko yang berisi air, namun air tersebut bisa berubah-ubah. Misalnya, kita membuat sebuah aplikasi dimana jika setiap kita memencet icon “+”, angka yang ada di tengah tampilan akan bertambah satu.

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

**Widget yang ada di `main.dart`**
- `MyApp`: Ini adalah _widget_ utama yang merupakan _root_ dari aplikasi. Ini adalah tempat di mana kita mengkonfigurasi tema dan menentukan halaman awal aplikasi.

- `MaterialApp`: _Widget_ ini digunakan untuk mengonfigurasi dan membangun aplikasi Flutter. Ini juga mengatur berbagai parameter dan properti aplikasi, seperti judul aplikasi dan tema.

- `title`: _Widget_ ini digunakan untuk memberi judul aplikasi. Judul ini akan muncul di App bar pada perangkat.

- `theme`: _Widget_ ini digunakan untuk menentukan tema aplikasi. Dalam contoh ini, tema didefinisikan menggunakan `ThemeData` dan mencakup properti seperti warna.

- `ColorScheme`: Ini adalah bagian dari tema yang menentukan skema warna untuk aplikasi. Dalam contoh ini, skema warna didefinisikan dengan menggunakan `ColorScheme.fromSeed` dengan warna dasar yang ditetapkan ke `Colors.deepPurple`.

- `useMaterial3`: _Widget_ ini digunakan untuk mengaktifkan atau menonaktifkan mode Material You (Material Design 3.0), yang memengaruhi tampilan dan perilaku aplikasi sesuai dengan panduan desain terbaru.

- `MyHomePage`: Ini adalah widget yang digunakan sebagai halaman awal aplikasi. Ini adalah halaman utama aplikasi di mana kita dapat menambahkan konten dan komponen yang ingin ditampilkan kepada pengguna.

**Widget yang ada di `menu.dart`**
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

1. Pertama-tama saya membuat proyek Flutter baru terlebih dahulu dengan nama `nyasia_and_co`, kemudian masuk ke dalam direktori proyek tersebut dengan menjalankan perintah di bawah ini pada Terminal atau Command Prompt.,
    ```dart
    flutter create nyasia_and_co
    cd nyasia_and_co
    ```

2. Kemudian saya melakukan `git init` pada `root folder` dan `add`-`commit`-`push` proyek ke sebuah repositori di GitHub.
    ~~~
    https://github.com/nyasiaay/nyasia_and_co_mobile 
    ~~~

3. Lalu saya menambahkan file baru bernama `menu.dart` dalam direktori `nyasia_and_co/lib` dan mengisinya dengan code berikut:
    ```dart
    import 'package:flutter/material.dart';

    class ShopItem {
    final String name;
    final IconData icon;

    ShopItem(this.name, this.icon);
    }

    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    @override
    Widget build(BuildContext context) {
        return Material(
        color: Colors.indigo,
        child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}")));
            },
            child: Container(
            // Container untuk menyimpan Icon dan Text
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    }
    class MyHomePage extends StatelessWidget {
        MyHomePage({Key? key}) : super(key: key);
        final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist),
        ShopItem("Tambah Item", Icons.add_shopping_cart),
        ShopItem("Logout", Icons.logout),
    ];
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'nyasia & co.',
            ),
        ),
        body: SingleChildScrollView(
            // Widget wrapper yang dapat discroll
            child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
                // Widget untuk menampilkan children secara vertikal
                children: <Widget>[
                const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                    'Welcome to nyasia & co.!', // Text yang menandakan toko
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                ),
                // Grid layout
                GridView.count(
                    // Container pada card kita.
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    return ShopCard(item);
                    }).toList(),
                ),
                ],
            ),
            ),
        ),
        );
    }
    
    }
    ```

4. Selanjutnya saya mengubah isi file `main.dart` dengan kode berikut:
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/menu.dart';

    void main() {
    runApp(const MyApp());
    }

    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

5. Lalu untuk mengerjakan bagian bonus mengubah warna tombol pertama-tama saya mengisiasi variabel color di class `ShopCard` pada berkas `menu.dart` sebagai berikut
    ```dart
    class ShopCard extends StatelessWidget {
        final ShopItem item;
        final Color backgroundColor;

        const ShopCard(this.item, this.backgroundColor, {Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return Material(
            color: backgroundColor, // Menggunakan warna latar belakang yang diberikan
            child: InkWell(
                // Area responsive terhadap sentuhan
                onTap: () {
                // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}")));
                },
                child: Container(
                // Container untuk menyimpan Icon dan Text
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                        ),
                    ],
                    ),
                ),
                ),
            ),
            );
        }
        }
    ```
6. Selanjutnya, dalam widget `MyHomePage `, saya perlu memberikan warna yang berbeda kepada setiap `ShopCard` berdasarkan indeksnya:
    ```dart
    GridView.count(
        // Container pada card kita.
        primary: true,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        shrinkWrap: true,
        children: items.asMap().entries.map((entry) {
            int index = entry.key;
            ShopItem item = entry.value;
            Color backgroundColor = Colors.blue;

            // Berikan warna yang berbeda berdasarkan indeks
            if (index == 0) { 
                backgroundColor = Colors.blue; // Warna "Lihat Item"
            } else if (index == 1) {
                backgroundColor = const Color.fromARGB(1000, 20, 207, 170); // Warna "Tambah Item"
            } else if (index == 2) {
                backgroundColor = Colors.red; // Warna "Logout"
            }
            // Iterasi untuk setiap item
            return ShopCard(item, backgroundColor, key: ValueKey<int>(index));
            }).toList(),
    )
    ```

# Tugas 8

## 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)