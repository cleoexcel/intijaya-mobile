# BANGUNAN INTI JAYA
E-Commerce Web Application for All Your Building Needs

### INTI JAYA Mobile

---
- [Tugas 7: Elemen Dasar Flutter](#pbp-c---tugas-7)
- [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](#pbp-c---tugas-8)
## PBP C - Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- Di Flutter, ada dua jenis widget utama: **Stateless Widget** dan **Stateful Widget**. **Stateless Widget** adalah widget yang tidak bisa berubah. Artinya, tampilannya hanya bergantung pada data yang diberikan dari luar dan tidak akan berubah dengan sendirinya. Jika kita ingin membuat bagian aplikasi yang tidak berubah, seperti teks tetap atau ikon, kita bisa menggunakan Stateless Widget. Misalnya, sebuah tombol yang hanya menampilkan teks "Selamat Datang" yg cocok dibuat dengan Stateless Widget karena tidak ada interaksi atau data yang bisa mengubah tampilannya.

- Di sisi lain, **Stateful Widget** adalah widget yang bisa berubah, sesuai dengan interaksi atau data di dalamnya. Ini berarti kita bisa membuat tampilan yang dinamis, seperti tombol yang berubah warna atau teks saat ditekan. Stateful Widget memiliki bagian khusus yang disebut "state" untuk menyimpan informasi yang bisa berubah. Saat ada perubahan pada state, widget ini bisa memperbarui tampilannya tanpa harus membuat ulang seluruh halaman. Stateful Widget cocok digunakan untuk fitur yang memerlukan pembaruan tampilan berdasarkan aksi pengguna, seperti form yang berubah setelah data diisi atau animasi yang bergerak sesuai interaksi.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- Pada proyek ini, saya menggunakan beberapa widget Flutter. yang pertama yaitu **MaterialApp** sebagai widget utama untuk aplikasi berbasis material, menyediakan tema dan navigasi global. **Scaffold** digunakan sebagai struktur dasar halaman, menyediakan elemen UI seperti AppBar dan body. Di dalam **AppBar**, saya menetapkan judul aplikasi menggunakan widget **Text**. Di bagian body, **Column** dan **Row** yang membantu mengatur tata letak vertikal dan horizontal, sementara **Padding** sebagai penambah jarak di sekitar elemen.

- Lalu **GridView** dalam mode count yg digunakan untuk menampilkan tombol-tombol dalam grid, di mana setiap tombol direpresentasikan oleh **ItemCard**. **ItemCard** sendiri terdiri dari **InkWell** untuk memberikan respons klik, dan **Icon** serta **Text** yang menampilkan ikon dan nama item. InkWell di sini bisa sebagai tampilan animasi saat ditekan, sementara **ScaffoldMessenger** yg akan menampilkan pesan **SnackBar** ketika tombol ditekan.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
- Fungsi `setState()` digunakan dalam **Stateful Widget** di Flutter untuk memberi tahu aplikasi bahwa ada perubahan pada data yang perlu di-render ulang di layar. Ketika `setState()` dipanggil, Flutter akan memperbarui tampilan sesuai perubahan pada variabel atau data yang ada di dalamnya. Hanya variabel-variabel dalam kelas state (yang biasanya berada di dalam `_MyWidgetState` misalnya) yang akan terdampak oleh `setState()`. Jadi, jika ada variabel seperti penghitung angka, status tombol, atau teks yang ingin berubah ketika pengguna berinteraksi, `setState()` diperlukan untuk memberitahu Flutter agar memperbarui tampilan sesuai perubahan pada variabel tersebut.

### Jelaskan perbedaan antara const dengan final.
- Di Dart, `const` dan `final` digunakan untuk mendeklarasikan variabel yang nilainya tidak bisa diubah **`final`** digunakan untuk variabel yang nilainya ditentukan saat aplikasi berjalan (runtime) dan setelah itu tidak bisa diubah lagi. Misalnya, jika kita mengambil data dari API dan hanya ingin menetapkan nilainya satu kali, kita bisa menggunakan `final`. Sementara itu, **`const`** digunakan untuk variabel yang nilainya sudah diketahui dan tetap sejak awal, bahkan sebelum aplikasi berjalan (compile time). `const` cocok untuk nilai yang pasti, seperti angka tetap atau warna yang tidak akan berubah. Jadi, `const` hanya bisa digunakan untuk nilai yang benar-benar tetap sejak awal, sedangkan `final` bisa digunakan untuk nilai yang tetap setelah pertama kali diisi saat aplikasi berjalan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### 1. Generate proyek Flutter baru pada terminal dengan nama intijayamobile, kemudian masuk ke dalam direktori proyek tersebut.
```python
    flutter create intijayamobile
    cd intijayamobile
```
#### 2. Melakukan git init pada root folder dan lakukan add-commit-push proyek ke repositori baru yang saya buat dengan nama intijaya-mobile.
#### 3. Merapikan struktur proyek
- Saya membuat file baru bernama menu.dart pada direktori intijayamobile/lib. Pada baris pertama file tersebut, saya menambahkan kode di bawah ini:
```python
    import 'package:flutter/material.dart';
```
- Dari file main.dart, pindahkan (cut) kode baris ke-39 hingga akhir yang berisi kedua class yaitu class MyHomePage dan class _MyHomePageState ke file menu.dart
- Saya menambahkan kode berikut ini pada awal file main.dart untuk menghilangkan error pada baris ke 34
```python
    import 'package:intijayamobile/menu.dart';
```
#### 4. Membuat Widget Sederhana pada Flutter
- Mengubah Tema Warna Aplikasi, saya mengubah kode pada main.dart di bagian tema aplikasi saya yang mempunyai tipe MaterialApp menjadi seperti di bawah ini.
```python
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ).copyWith(secondary: Colors.red[900]),
```
- Mengubah Sifat Widget Halaman Menu Menjadi Stateless. Pada berkas main.dart, saya hapus const MyHomePage(title: 'Flutter Demo Home Page') sehingga cukup menjadi:
```python
    MyHomePage(),
```
- Pada berkas menu.dart, saya mengubah sifat widget halaman dari stateful menjadi stateless sehingga berkas menu.dart saya terlihat seperti ini.
```python
    class MyHomePage extends StatelessWidget {
        MyHomePage({super.key});

        @override
        Widget build(BuildContext context) {
        return Scaffold(
            ... 
        );
        }
    }
```
- Membuat Button Card Sederhana dengan Icon. Sebelum membuat button untuk card, kita membuat class baru bernama ItemHomepage yang berisi atribut-atribut dari card yang akan kamu buat (pada kasus ini berisi name, icon, dan color untuk membedakan warna tiap tombol). Pada berkas menu.dart, letakkan kode di bawah ini di luar class MyHomePage
```python
    ...
    class ItemHomepage {
        final String name;
        final IconData icon;
        final Color color;
        ItemHomepage(this.name, this.icon, this.color);
    }
    ...
```
- Setelah itu, saya membuat list of ItemHomepage yang berisi tombol-tombol yang akan ditambahkan pada class MyHomePage.
```python
    class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    
    final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart, Colors.blue),
        ItemHomepage("Tambah Produk", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.red[900] ?? Colors.red),
    ];
```
- Setelah itu saya membuat class ItemCard untuk menampilkan tombol-tombol. Nantinya juga tombol yang ditekan akan menampilkan snackbar yang berisi pesan "Kamu telah menekan tombol [nama button]".
```python
    class ItemCard extends StatelessWidget {
        final ItemHomepage item;
        const ItemCard(this.item, {super.key});
        @override
        Widget build(BuildContext context) {
            return Material(
            color: item.color,
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
                onTap: () {
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
                child: Container(
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
- Mengintegrasikan ItemCard untuk Ditampilkan di MyHomePage. Untuk mengintegrasikan dan menampilkan card yang saya miliki di HomePage, saya mengubah bagian Widget build() pada class MyHomePage.
```python
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text(
            'Inti Jaya',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const SizedBox(height: 16.0),
                Center(
                child: Column(
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                        'Welcome to Inti Jaya',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                        ),
                        ),
                    ),
                    GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
    }
```

## PBP C - Tugas 8
### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
- Di Flutter, **`const`** digunakan untuk membuat widget atau objek yang tidak akan berubah (statis) atau bisa disebut juga immutable. Keuntungan utamanya adalah meningkatkan performa atau efisiensi aplikasi dikarenakan Flutter tidak perlu membuat kembali widget setiap kali aplikasi diperbarui. Widget yang menggunakan **`const`** akan langsung disimpan di memori, sehingga lebih cepat dan lenih hemat memori. Sebaiknya kita menggunakan **`const`** untuk elemen-elemen yang isinya tidak berubah, seperti teks atau ikon yang tampil sama sepanjang waktu. Namun, jika widget menampilkan data yang bisa berubah, seperti hasil input pengguna, maka **`const`** tidak cocok digunakan. Jadi gunakan **`const`** untuk hal-hal yang tidak berubah agar aplikasi lebih efisien.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
- Column digunakan untuk menyusun widget secara vertikal, sedangkan Row digunakan untuk menyusun widget secara horizontal. Keduanya sering digunakan dalam Flutter untuk mengatur tata letak elemen dengan fleksibilitas yg tinggi. Column cocok untuk membuat daftar elemen dari atas ke bawah (contohnya: form, daftar teks), sementara Row cocok untuk elemen yang berjejer ke samping (contoh: tombol atau menu bar). Keduanya mendukung properti seperti mainAxisAlignment yaitu mengatur spasi di arah utama dan crossAxisAlignment yaitu mengatur perataan di arah sekunder.

- Contoh Column
```python
    import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("contoh column")),
            body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text("keran", style: TextStyle(fontSize: 20)),
                Text("Pipa", style: TextStyle(fontSize: 20)),
                Text("Cat", style: TextStyle(fontSize: 20)),
            ],
            ),
        ),
        );
    }
    }
```
- Contoh Row
```python
    import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("contoh row")),
            body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text("keran", style: TextStyle(fontSize: 20)),
                Text("Pipa", style: TextStyle(fontSize: 20)),
                Text("Cat", style: TextStyle(fontSize: 20)),
            ],
            ),
        ),
        );
    }
    }

```
### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
- Pada halaman form yang saya buat, elemen input yang saya gunakan adalah **`TextFormField`** untuk mangambil data dari pengguna. Elemen ini digunakan oleh tiga jenis input, yaitu: `Name` untuk nama produk, `Description` untuk deskripsi produk, dan `Amount` untuk jumlah produk yang berupa angka. Selain itu, terdapat **`ElevatedButton`** yang saya gunakan sebagai tombol untuk menyimpan data form, yang akan memvalidasi input dan menampilkan hasil input pengguna dalam dialog.

- Namun selain elemen tersebut, ada beberapa elemen input Flutter lainnya yang tidak digunakan dalam tugas saya, seperti **`Checkbox`**, **`Radio`**, **`DropdownButton`**, **`Switch`**, **`Slider`**, dan **`DatePicker`**. Misalnya, **`Checkbox`** yang biasanya dapat digunakan untuk menandai status produk dengan ceklis, sedangkan **`DropdownButton`** yg juga cocok untuk memilih kategori produk dari daftar opsi. **`Radio`** untuk memilih salah satu opsi dari beberapa pilihan, seperti kategori produk. **`Slider`** untuk input nilai dalam bentuk geser, misalnya untuk menentukan harga produk dalam rentang tertentu. **`DatePicker`** untuk memilih tanggal.


### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
- Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan properti **`ThemeData`** di dalam `MaterialApp`. Dalam kode yang saya buat, tema utama diatur melalui properti **`ThemeData`**, seperti menetapkan **`primarySwatch`** untuk warna utama aplikasi dan menggunakan **`ColorScheme`** untuk menyesuaikan warna tambahan. Dengan cara ini, saya dapat mendefinisikan warna utama (primary) dan sekunder (secondary) yang secara konsisten digunakan di seluruh aplikasi, termasuk komponen seperti **AppBar**, **Buttons**, dan **Drawer**.

- Ya, saya  mengimplementasikan tema pada aplikasi yang saya buat. Sebagai contoh, warna utama aplikasi diatur dengan **`primarySwatch: Colors.red`**, dan warna sekunder dengan **`Colors.red[900]`**. Tema ini diterapkan ke berbagai widget seperti **AppBar** yang menggunakan warna utama sebagai background, serta tombol-tombol (ElevatedButton dan InkWell) yang menggunakan warna tema untuk memastikan konsistensi visual di seluruh aplikasi. Penggunaan tema ini membuat aplikasi lebih terorganisasi dan mudah untuk diperbarui jika ada perubahan desain di masa depan.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- Dalam aplikasi Flutter dengan banyak halaman, saya menangani navigasi menggunakan **Navigator** dan **MaterialPageRoute** untuk berpindah antar halaman. Saya menggunakan `Navigator.push` untuk menambahkan halaman baru ke tumpukan navigasi dan `Navigator.pop` untuk kembali ke halaman sebelumnya. Selain itu, untuk navigasi melalui menu, saya menggunakan **Drawer** dengan `Navigator.pushReplacement` agar tumpukan navigasi atau menunya teratur tanpa menambahkan  banyak halaman. Pada aplikasi yang saya buat, Drawer digunakan untuk berpindah antara halaman utama dan halaman formulir tambah produk, ini bisa memberikan akses yang mudah bagi pengguna.

