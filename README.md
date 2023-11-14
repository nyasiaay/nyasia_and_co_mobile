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
- **`Navigator.push():`**
  Metode `push()` menambahkan suatu _route_ ke dalam _stack_ _route_ yang dikelola oleh `Navigator`. Metode ini menyebabkan _route_ yang ditambahkan berada pada paling atas _stack_, sehingga _route_ yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna.

  Metode ini digunakan ketika ingin menambahkan halaman baru ke dalam tumpukan dan membiarkan pengguna dapat kembali ke halaman sebelumnya.
  ```dart
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
    );
  ```

- **`Navigator.pushReplacement():`**
  Metode `pushReplacement()` menghapus _route_ yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu _route_. Metode ini menyebabkan aplikasi untuk berpindah dari _route_ yang sedang ditampilkan kepada pengguna ke suatu _route_ yang diberikan.

  Metode ini digunakan ketika ingin menggantikan halaman saat ini dengan halaman baru, misalnya, setelah pengguna melakukan tindakan tertentu seperti login.
  ```dart
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  ```
## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Berikut adalah penjelasan tentang beberapa widget layout di Flutter:

- **Center()**: Widget ini digunakan untuk memposisikan widget anak di tengah. Ukuran widget ini akan sebesar mungkin jika properti `widthFactor` dan `heightFactor` diatur ke `null` dan dimensinya dibatasi. Jika dimensi tidak dibatasi dan `widthFactor` dan `HeightFactor` diatur ke `null`, maka widget Center akan mengambil ukuran widget anaknya.

-  **Column()**: Widget ini digunakan untuk menampilkan widget anak dalam susunan vertikal. Untuk membuat anak memenuhi ruang vertikal yang tersedia, bungkus anak dalam widget Expanded. 

- **Row()**: Widget ini digunakan untuk menampilkan widget anak dalam susunan horizontal. Untuk membuat anak memenuhi ruang horizontal yang tersedia, bungkus anak dalam widget Expanded. 

- **MaterialApp**: Widget ini membungkus beberapa widget yang menggunakan tema material design.

- **Scaffold**: Widget ini untuk struktur dasar material design.

- **AppBar**: Widget ini untuk membuat AppBar.

Setiap widget ini memiliki konteks penggunaannya masing-masing. Misalnya, widget `Center()` biasanya digunakan ketika Anda ingin memposisikan widget anak di tengah layar. Sementara itu, widget `Column()` dan `Row()` digunakan ketika Anda ingin menata widget anak secara vertikal dan horizontal.

## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- **`TextFormField` untuk Nama Item**
  Berfungsi untuk memasukkan dan mengumpulkan data nama item dari input pengguna. Untuk Nama Item saya menggunakan tipe data `string`. Memiliki fungsi `validator` untuk memastikan input sudah diisi
- **`TextFormField` untuk Jumlah**
  Berfungsi untuk memasukkan dan mengumpulkan data jumlah dari input pengguna. Untuk jumla saya menggunakan tipe data `integer`. Memiliki fungsi `validator` untuk memastikan input sudah diisi dan merupakan angka
- **`TextFormField` untuk Deskripsi**
  Berfungsi untuk memasukkan dan mengumpulkan data deskripsi dari input pengguna. Untuk deskripsi saya menggunakan tipe data `string`. Memiliki fungsi `validator` untuk memastikan input sudah diisi

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

Berikut adalah lapisan utama dalam Clean Architecture pada Flutter:

1. **Data Layer**: Lapisan ini bertanggung jawab atas pengambilan dan penyimpanan data. Lapisan data terdiri dari repositori, sumber data, dan model. Repositori adalah kelas yang dapat berinteraksi dengan nol atau beberapa sumber data untuk mengekspos data ke bagian lain dari aplikasi, sementara sumber data bertanggung jawab untuk memberikan data yang dibutuhkan aplikasi untuk melakukan fungsi.

2. **Domain Layer**: Lapisan ini mewakili logika bisnis inti dari aplikasi. Lapisan domain mengelola logika bisnis.

3. **Presentation Layer**: Lapisan ini mengandung komponen _interface_, seperti widget, layar, dan tampilan. Lapisan ini bertanggung jawab untuk menangani interaksi pengguna dan merender UI.


## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
1. Pertama-tama, saya membuat direktori baru dengan nama `widgets` dan berkas baru dengan nama `left_drawer.dart` dan mengisinya dengan kode berikut
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/screens/menu.dart';
    import 'package:nyasia_and_co/screens/shoplist_form.dart';
    import 'package:nyasia_and_co/screens/list_item.dart';

    class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
        child: ListView(
            children: [
            const DrawerHeader(
                // TODO: Bagian drawer header
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 125, 216, 201),
                ),
                child: Column(
                children: [
                    Text(
                    'nyasia & co.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                    "Welcome to nyasia & co.!",
                    style: TextStyle(
                        fontSize: 15, 
                        color: Colors.white, 
                        fontWeight: FontWeight.normal, 
                    ),
                    textAlign: TextAlign.center, 
                    )
                ],
                ),
            ),

            // TODO: Bagian routing
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Halaman Utama'),
                // Bagian redirection ke MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Item'),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShopFormPage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.checklist),
                title: const Text('Lihat Item'),
                // Bagian redirection ke FragranceFormPage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemListPage(itemList: itemList),
                    ));
                },
            )
            ],
        ),
        );
    }
    }
    ```
2. Lalu, saya tidak lupa untuk mengimpor _widget drawer_ yang sudah dibuat pada berkas `menu.dart`
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/widgets/left_drawer.dart';
    import 'package:nyasia_and_co/widgets/shop_card.dart';
    ```
3. Untuk membuat halaman form pada aplikasi saya membuat berkas baru bernama `shoplist_form.dart` dan mengisinya dengan kode sebagai berikut
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/widgets/left_drawer.dart';
    import 'package:nyasia_and_co/models/models.dart';

    List<Item> itemList = [];

    class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
    }

    class _ShopFormPageState extends State<ShopFormPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text(
                'Form Tambah Item',
            ),
            ),
            backgroundColor: Color.fromARGB(1000, 125, 216, 201),
            foregroundColor: Colors.white,
        ),
        // TODO: Tambahkan drawer yang sudah dibuat di sini
        drawer: const LeftDrawer(),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
    ```
4. Lalu, saya membuat variabel baru bernama `_formKey` untuk handler dari form _state_, validasi form, dan penyimpanan form. Setelah itu, menambahkan `_formKey` ke dalam atribut _key_ pada _widget_ 
    ```dart
    ...
    class _ShopFormPageState extends State<ShopFormPage> {
        final _formKey = GlobalKey<FormState>();
    ...
    ```
    ```dart
    ...
    body: Form(
        key: _formKey,
        child: SingleChildScrollView(),
    ),
    ...
    ```
3. Selanjutnya saya mengisi _widget_ `form` dengan field dengan variabel `_name`, `_amount` dan `_description`
    ```dart
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _amount = 0;
    String _description = "";
    ```
5. Kemudian saya membuat widget column sebagai _child_ dari `SingleChildScrollView`
    ```dart
    ...
    body: Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column()
        ),
    ...
    ```
6. Selanjutnya saya mebuat _widget_ `TextFormField` yang dibungkus oleh `Padding` yang merupakan _children_ dari _widget_ `Column` untuk `name`, `amount`, dan `description`. Lalu menambahkan `crossAxisAlignment` untuk atur _alignment_ _children_. Saya juga menambahkan validator agar input wajib diisi
    ```dart
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
                      // TODO: Tambahkan variabel yang sesuai
                      _description = value!;
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
    ```
7. Setelah itu saya menambahkan tombol yang dibungkus `Padding` serta `Align` yang merupakan _child_ dari `Column` untuk membuat _pop-up_. Lalu tambahkan fungsi `showDialog()` di bagian `onPressed()`. Setelah itu, munculkan `AlertDialog` dan menambahkan fungsi _reset form_
    ```dart
    Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 125, 216, 201)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Item newItem = Item(
                          name: _name,
                          amount: _amount,
                          description: _description,
                        );
                        itemList.add(newItem);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Item berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // TODO: Munculkan value-value lainnya
                                    Text('Nama: $_name'),
                                    Text('Jumlah: $_amount'),
                                    Text('Deskripsi: $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        _formKey.currentState!.reset();
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
    ```
8. Kemudian saya membuat berkas baru yang bernama `shop_card dart` pada direktori `widgets`. Lalu memindahkan isi _widget_ `ShopItem` pada `menu.dart` berkas `shop_card.cart`
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/screens/shoplist_form.dart';
    import 'package:nyasia_and_co/screens/list_item.dart';

    class ShopItem {
    final String name;
    final IconData icon;
    final Color color;

    ShopItem(this.name, this.icon, this.color);
    }

    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {super.key}); // Constructor

    @override
    Widget build(BuildContext context) {
        return Material(
        color: item.color,
        child: InkWell(
            // Area responsive terhadap sentuhan
            onTap: () {
            // Memunculkan SnackBar ketika diklik
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(
                    content: Text("Kamu telah menekan tombol ${item.name}!")));
            if (item.name == "Tambah Item") {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                    ));
            }
            if (item.name == "Lihat Item") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ItemListPage(itemList: itemList)));
            }
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
9. Untuk membuat halaman lihat item, saya membuat berkas baru bernama `list_item.dart` berisi kode berikut 
    ```dart
    import 'package:flutter/material.dart';
    import 'package:nyasia_and_co/models/models.dart';
    import 'package:nyasia_and_co/widgets/left_drawer.dart';

    class ItemListPage extends StatelessWidget {
    final List<Item> itemList;

    const ItemListPage({Key? key, required this.itemList}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Daftar Item'),
            backgroundColor: Color.fromARGB(1000, 125, 216, 201),
            foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
            return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: ListTile(
                title: Text(itemList[index].name),
                subtitle: Text('Jumlah: ${itemList[index].amount}'),
                onTap: () {
                    // Menampilkan popup dengan informasi barang yang di-klik
                    showDialog(
                    context: context,
                    builder: (context) {
                        return AlertDialog(
                        title: Text(itemList[index].name),
                        content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                            Text('Jumlah: ${itemList[index].amount}'),
                            Text('Deskripsi: ${itemList[index].description}'),
                            ],
                        ),
                        actions: [
                            TextButton(
                            onPressed: () {
                                Navigator.pop(context);
                            },
                            child: const Text('Tutup'),
                            ),
                        ],
                        );
                    },
                    );
                },
                ),
            );
            },
        ),
        );
    }
    }
    ```
9. Kemudian saya membuat berkas dengan nama `screens` pada direktori `lib`. Lalu memindahkan berkas `menu.dart` dan `shoplist_form.dart` dan `list_item.dart` ke ke direktori `screens`.
10. Setelah itu saya membuat direkoti baru dengan nama `models` pada direktori `lib` dan membuat berkas baru dengan nama `models.dart` berisi kode sebagai berikut
    ```dart
    class Item {
    String name;
    int amount;
    String description;

    Item({
        required this.name,
        required this.amount,
        required this.description,
    });
    }
    ```