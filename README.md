# BANGUNAN INTI JAYA
E-Commerce Web Application for All Your Building Needs

### INTI JAYA Mobile

---
- [Tugas 7: Elemen Dasar Flutter](#pbp-c---tugas-7)
- [Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements](#pbp-c---tugas-8)
- [Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter](#pbp-c---tugas-9)

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

## PBP C - Tugas 9
### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
- Membuat model untuk pengambilan atau pengiriman data JSON membantu kita memastikan struktur data yang digunakan sudah benar, sesuai format yang diharapkan. Dengan model, kita bisa memvalidasi data sebelum digunakan, sehingga mencegah error seperti data hilang, tipe data salah, atau field yang tidak sesuai. Jika tidak membuat model, aplikasi mungkin tetap bisa berjalan, tetapi risiko error lebih tinggi, terutama saat data tidak sesuai ekspektasi, yang dapat menyebabkan aplikasi crash atau perilaku yang tidak diinginkan.

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
- Library `http` digunakan untuk mempermudah Flutter berkomunikasi dengan server menggunakan protokol HTTP. Dengan library ini, Flutter dapat mengirim dan menerima data melalui metode HTTP seperti POST, GET, PUT, PATCH, dan DELETE. Library `http` juga memudahkan pengelolaan header, body, dan respons HTTP, sehingga pengiriman maupun penerimaan data JSON serta autentikasi dengan server dapat dilakukan dengan lebih efisien. Dalam tugas ini, library `http` digunakan untuk menghubungkan Flutter dengan Django, memungkinkan pengiriman input dari pengguna, permintaan data ke server, serta implementasi fitur login, register, dan logout pada aplikasi Flutter.

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- CookieRequest adalah class yang sering digunakan dalam Flutter untuk mengelola cookie pada saat melakukan request HTTP, seperti autentikasi atau komunikasi dengan server. Class ini memungkinkan aplikasi untuk menyimpan, membaca, dan mengirimkan cookie secara otomatis, sehingga sesi pengguna atau data terkait dapat dipertahankan selama aplikasi berjalan.
- Instance CookieRequest perlu dibagikan ke semua komponen aplikasi untuk memastikan setiap bagian aplikasi menggunakan data sesi yang sama. Hal ini penting agar cookie, seperti token autentikasi atau data sesi, tetap konsisten saat digunakan untuk berbagai request. Jika tidak dibagikan, setiap komponen mungkin akan membuat instance baru yang tidak memiliki informasi cookie sebelumnya, sehingga dapat menyebabkan masalah seperti logout otomatis atau sesi yang tidak sinkron.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Proses pengiriman data dalam Flutter dimulai dari input pengguna melalui widget seperti TextField, DropdownButton, atau Form. Data yang dimasukkan pengguna ditangkap menggunakan controller (seperti TextEditingController) atau callback (misalnya onChanged) dan kemudian divalidasi untuk memastikan sesuai dengan format yang diharapkan. Setelah validasi, data ini diproses, seperti diubah formatnya atau ditambahkan informasi tambahan, sebelum dikirimkan ke server. Pengiriman ke server dilakukan melalui HTTP request menggunakan library seperti http atau Dio. Jika aplikasi memerlukan autentikasi, cookie atau token biasanya disertakan dalam request untuk memastikan keamanan data.
- Setelah data dikirim, server memprosesnya, menyimpan informasi, atau melakukan tindakan lain sesuai kebutuhan, lalu mengembalikan respons ke aplikasi dalam format JSON. Flutter menerima respons ini secara asinkron menggunakan Future atau async/await, kemudian mengonversi JSON menjadi model Dart. Data yang diterima diperbarui ke dalam state aplikasi menggunakan metode seperti setState, Provider, atau lainnya, agar dapat ditampilkan pada UI. Dengan alur ini, data dari input pengguna bisa melewati proses validasi, pengiriman, pemrosesan di server, hingga ditampilkan kembali dengan lancar dan terstruktur.

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Proses autentikasi dimulai dari pengguna yang mendaftar akun melalui form di Flutter dengan mengisi data seperti email, username, dan password. Data ini dikirimkan ke Django melalui HTTP POST request untuk divalidasi dan disimpan ke database. Jika berhasil, Django mengembalikan respons seperti pesan sukses atau token autentikasi ke Flutter, yang kemudian menampilkan notifikasi kepada pengguna bahwa pendaftaran berhasil. Selanjutnya, untuk login, pengguna memasukkan email dan password, yang dikirimkan ke Django untuk diverifikasi. Jika data cocok, Django mengembalikan token autentikasi (seperti JWT atau session token) ke Flutter, yang disimpan secara lokal untuk digunakan pada request berikutnya. Setelah login sukses, Flutter mengarahkan pengguna ke menu utama atau dashboard aplikasi.
- Saat logout, Flutter mengirimkan request ke Django untuk mengakhiri sesi dengan menghapus token atau session dari server. Flutter juga menghapus token yang tersimpan secara lokal dan mengarahkan pengguna kembali ke halaman login. Setelah login, setiap permintaan data ke server menggunakan token autentikasi yang diverifikasi oleh Django. Jika token valid, Django mengirimkan data yang diminta, dan Flutter memperbarui state aplikasi untuk menampilkan menu atau fitur sesuai hak akses pengguna. Dengan alur ini, autentikasi berjalan aman, mulai dari pendaftaran, login, hingga logout, dan memastikan data pengguna hanya diakses oleh yang berwenang.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
#### Setup Autentikasi pada Django untuk Flutter
1. Membuat django-app bernama authentication pada project Django yg telah dibuat.
2. Menambahkan authentication ke INSTALLED_APPS pada main project settings.py aplikasi Django 
3. Menjalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan serta menambahkan django-cors-headers ke requirements.txt.
4. Menambahkan corsheaders ke INSTALLED_APPS pada main project settings.py
5. menambahkan corsheaders.middleware.CorsMiddleware ke MIDDLEWARE pada main project settings.py
6. menambahkan beberapa variabel berikut ini pada main project settings.py
```python
    ...
    CORS_ALLOW_ALL_ORIGINS = True
    CORS_ALLOW_CREDENTIALS = True
    CSRF_COOKIE_SECURE = True
    SESSION_COOKIE_SECURE = True
    CSRF_COOKIE_SAMESITE = 'None'
    SESSION_COOKIE_SAMESITE = 'None'
...
```
7. menambahkan 10.0.2.2 pada ALLOWED_HOSTS di berkas settings.py.
```python
    ALLOWED_HOSTS = [..., ..., "10.0.2.2"]
```
8. Membuat sebuah metode view untuk login pada authentication/views.py.
```python
    @csrf_exempt
    def login(request):
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                auth_login(request, user)
                return JsonResponse({
                    "username": user.username,
                    "status": True,
                    "message": "Login sukses!"
                }, status=200)
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Login gagal, akun dinonaktifkan."
                }, status=401)

        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, periksa kembali email atau kata sandi."
            }, status=401)
```
9. Membuat file urls.py pada folder authentication dan menambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint login/.
```python
    from django.urls import path
    from authentication.views import login

    app_name = 'authentication'

    urlpatterns = [
        path('login/', login, name='login'),
    ]
```
10. menambahkan path('auth/', include('authentication.urls')), pada file intijaya/urls.py.
#### Integrasi Sistem Autentikasi pada Flutter
1. Install package
```python 
    flutter pub add provider
    flutter pub add pbp_django_auth
```
2. Memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider.
3. Membuat berkas baru pada folder screens dengan nama login.dart
```python
    void main() {
    runApp(const LoginApp());
    }

    class LoginApp extends StatelessWidget {
    const LoginApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            ).copyWith(secondary: Colors.red[900]),
        ),
        home: const LoginPage(),
        );
    }
    }

    class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
    }

    class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();

        return Scaffold(
        appBar: AppBar(
            title: const Text('Login'),
        ),
        body: Center(
            child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    const Text(
                        'Login',
                        style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    const SizedBox(height: 30.0),
                    TextField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter your username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        ),
                    ),
                    const SizedBox(height: 12.0),
                    TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        ),
                        obscureText: true,
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                        onPressed: () async {
                        String username = _usernameController.text;
                        String password = _passwordController.text;

                        // Cek kredensial
                        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                        // Untuk menyambungkan Android emulator dengan Django pada localhost,
                        // gunakan URL http://10.0.2.2/
                        final response = await request.login("http://localhost:8000/auth/login/", {
                            'username': username,
                            'password': password,
                        });

                        if (request.loggedIn) {
                            String message = response['message'];
                            String uname = response['username'];
                            if (context.mounted) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                            );
                            ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                SnackBar(
                                    content:
                                        Text("$message Selamat datang, $uname.")),
                                );
                            }
                        } else {
                            if (context.mounted) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                title: const Text('Login Gagal'),
                                content: Text(response['message']),
                                actions: [
                                    TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                        Navigator.pop(context);
                                    },
                                    ),
                                ],
                                ),
                            );
                            }
                        }
                        },
                        style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: const Text('Login'),
                    ),
                    const SizedBox(height: 36.0),
                    GestureDetector(
                        onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                        );
                        },
                        child: Text(
                        'Don\'t have an account? Register',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16.0,
                        ),
                        ),
                    ),
                    ],
                ),
                ),
            ),
            ),
        ),
        );
    }
    }
```
5. Pada file main.dart, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: const LoginPage()
6. Menambah metode view berikut pada authentication/views.py
```python
        from django.contrib.auth.models import User
        import json

        @csrf_exempt
        def register(request):
            if request.method == 'POST':
                data = json.loads(request.body)
                username = data['username']
                password1 = data['password1']
                password2 = data['password2']

                # Check if the passwords match
                if password1 != password2:
                    return JsonResponse({
                        "status": False,
                        "message": "Passwords do not match."
                    }, status=400)
                
                # Check if the username is already taken
                if User.objects.filter(username=username).exists():
                    return JsonResponse({
                        "status": False,
                        "message": "Username already exists."
                    }, status=400)
                
                # Create the new user
                user = User.objects.create_user(username=username, password=password1)
                user.save()
                
                return JsonResponse({
                    "username": user.username,
                    "status": 'success',
                    "message": "User created successfully!"
                }, status=200)
            
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Invalid request method."
                }, status=400)
    ```
    7. Menambah path baru pada authentication/urls.py dengan kode berikut
    ```python
        path('register/', register, name='register'),
    ```
    8. Membuat berkas baru pada folder screens dengan nama register.dart.
    ```python
    class RegisterPage extends StatefulWidget {
    const RegisterPage({super.key});

    @override
    State<RegisterPage> createState() => _RegisterPageState();
    }

    class _RegisterPageState extends State<RegisterPage> {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
        appBar: AppBar(
            title: const Text('Register'),
            leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
                Navigator.pop(context);
            },
            ),
        ),
        body: Center(
            child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                    const Text(
                        'Register',
                        style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter your username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        ),
                        validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                        }
                        return null;
                        },
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        ),
                        obscureText: true,
                        validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                        }
                        return null;
                        },
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                        controller: _confirmPasswordController,
                        decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Confirm your password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                        ),
                        obscureText: true,
                        validator: (value) {
                        if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                        }
                        return null;
                        },
                    ),
                    const SizedBox(height: 24.0),
                    ElevatedButton(
                        onPressed: () async {
                        String username = _usernameController.text;
                        String password1 = _passwordController.text;
                        String password2 = _confirmPasswordController.text;

                        // Cek kredensial
                        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                        // Untuk menyambungkan Android emulator dengan Django pada localhost,
                        // gunakan URL http://10.0.2.2/
                        final response = await request.postJson(
                            "http://localhost:8000/auth/register/",
                            jsonEncode({
                                "username": username,
                                "password1": password1,
                                "password2": password2,
                            }));
                        if (context.mounted) {
                            if (response['status'] == 'success') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                content: Text('Successfully registered!'),
                                ),
                            );
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                            );
                            } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                content: Text('Failed to register!'),
                                ),
                            );
                            }
                        }
                        },
                        style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 50),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        ),
                        child: const Text('Register'),
                    ),
                    ],
                ),
                ),
            ),
            ),
        ),
        );
    }
    }
```
#### Membuat Model Kustom
1. Menyalin data JSON dan mengubahnya menggunakan web Quicktype dengan source type menjadi JSON, dan language menjadi Dart.
2. Membuat file baru pada folder tersebut dengan nama product_entry.dart, dan tempel kode yang sudah disalin dari Quicktype.
#### Menerapkan Fetch Data dari Django Untuk Ditampilkan ke Flutter
1. Menambahkan Dependensi HTTP dengan melakukan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.
2. Pada file android/app/src/main/AndroidManifest.xml, menambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.
```python
    ...
        <application>
        ...
        </application>
        <!-- Required to fetch data from the Internet. -->
        <uses-permission android:name="android.permission.INTERNET" />
    ...
```
3. membuat berkas baru pada direktori lib/screens dengan nama list_productentry.dart dan impor library yang dibutuhkan
```python
    import 'package:flutter/material.dart';
    import 'package:intijayamobile/models/product_entry.dart';
```
4. Menambahkan kode berikut pada list_productentry.dart
```python
    import 'package:flutter/material.dart';
    import 'package:intijayamobile/models/product_entry.dart';
    import 'package:intijayamobile/widgets/left_drawer.dart';
    import 'package:pbp_django_auth/pbp_django_auth.dart';
    import 'package:provider/provider.dart';


    class ProductEntryPage extends StatefulWidget {
    const ProductEntryPage({super.key});

    @override
    State<ProductEntryPage> createState() => _ProductEntryPageState();
    }

    class _ProductEntryPageState extends State<ProductEntryPage> {
    Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
        // Replace `[YOUR_APP_URL]` with the actual URL
        final response = await request.get('http://localhost:8000/json/');
        var data = response;

        List<ProductEntry> listProduct = [];
        for (var d in data) {
        if (d != null) {
            listProduct.add(ProductEntry.fromJson(d));
        }
        }
        return listProduct;
    }

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
        appBar: AppBar(
            title: const Text('Product Entry List'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(request),
            builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
            } else {
                if (!snapshot.hasData) {
                return const Column(
                    children: [
                    Text(
                        'Belum ada data Product pada Inti Jaya.',
                        style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                    ),
                    SizedBox(height: 8),
                    ],
                );
                } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.name}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.description}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.price}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.quantity}"),
                        const SizedBox(height: 10),
                        Text("${snapshot.data![index].fields.categories}"),
            
                        ],
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
```
5. Menambahkan halaman list_productentry.dart ke widgets/left_drawer.dart dengan kode berikut.
``` python
    ListTile(
                leading: const Icon(Icons.add_reaction_rounded),
                title: const Text('Daftar product'),
                onTap: () {
                    // Route menu ke halaman product
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                    );
```
6. mengubah fungsi tombol Lihat produk pada halaman utama agar mengarahkan ke halaman ProductPage dengan menambahkan else if setelah kode if(...){...} di bagian akhir onTap: () { } yang ada pada file widgets/product_card.dart

#### Integrasi Form Flutter Dengan Layanan Django
1. Membuat sebuah fungsi view baru pada main/views.py aplikasi Django.
```python
    @csrf_exempt
    def create_product_flutter(request):
        if request.method == 'POST':

            data = json.loads(request.body)
            new_product = ProductEntry.objects.create(
                user=request.user,
                name=data["name"],
                price=int(data["price"]),
                description=data["description"],
                quantity=int(data["quantity"]),
                categories=data["categories"],
            )

            new_product.save()

            return JsonResponse({"status": "success"}, status=200)
        else:
            return JsonResponse({"status": "error"}, status=401)
```
2. Tambahkan path baru pada main/urls.py dengan kode berikut.
```python
     path('create-flutter/', create_product_flutter, name='create_product_flutter'),
```
3. Hubungkan halaman productentry_form.dart dengan CookieRequest seperti berikut
```python
...
    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();

        return Scaffold(
        ...
```
4. Mengubah perintah pada onPressed: () button tambah menjadi kode berikut.
```python
    onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                            final response = await request.postJson(
                                "http://localhost:8000/create-flutter/",
                                jsonEncode(<String, String>{
                                    'name': _name,
                                    'price': _price.toString(),
                                    'description': _description,
                                    'quantity': _amount.toString(),
                                    'categories': _categories,
                                }),
                            );
                            if (context.mounted) {
                                if (response['status'] == 'success') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                    content: Text("Product baru berhasil disimpan!"),
                                    ));
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                        content:
                                            Text("Terdapat kesalahan, silakan coba lagi."),
                                    ));
                                }
                            }
                        }
                    },
```
5. menjalankan ulang aplikasi dan coba untuk menambahkan transaksi baru dari aplikasi Flutter.

#### Implementasi Fitur Logout
1. membuat sebuah metode view untuk logout pada authentication/views.py.
```python
    @csrf_exempt
    def logout(request):
        username = request.user.username
        try:
            auth_logout(request)
            return JsonResponse({
                "username": username,
                "status": True,
                "message": "Logout berhasil!"
            }, status=200)
        except:
            return JsonResponse({
            "status": False,
            "message": "Logout gagal."
            }, status=401)
```
2. Menambahkan path baru pada authentication/urls.py dengan kode berikut.
```python
    path('logout/', logout, name='logout'),
```
3. Membuka file lib/widgets/product_card.dart dan menambahkan potongan kode berikut
```python
    ...
    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Material(
            ...
```
4. Mengubah perintah onTap: () {...} pada widget Inkwell menjadi onTap: () async {...} agar widget Inkwell dapat melakukan proses logout secara asinkronus.
5. Menambahkan kode berikut ke dalam async {...} di bagian akhir.
```python
    } else if (item.name == "Logout") {
                    final response = await request.logout(
                        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                        "http://localhost:8000/auth/logout/");
                    String message = response["message"];
                    if (context.mounted) {
                        if (response['status']) {
                            String uname = response["username"];
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("$message Sampai jumpa, $uname."),
                            ));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                        } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(message),
                                ),
                            );
                        }
                    }
```
