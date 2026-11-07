# PPB Produk Bawaan - Flutter CRUD dengan Backend PHP + MySQL

Aplikasi Flutter untuk mengelola data produk (CRUD) yang terhubung ke backend PHP dan database MySQL (phpMyAdmin) di server lokal (XAMPP). Data awal produk diambil dari [DummyJSON](https://dummyjson.com/products) lalu disimpan ke database lokal.

## Fitur

- **Create**: menambah produk baru (judul, harga, kategori)
- **Read**: menampilkan daftar produk dari database, pencarian, filter kategori, dan urut harga
- **Update**: mengubah judul dan harga produk
- **Delete**: menghapus produk dari database

## Teknologi

- Flutter (Provider, GoRouter, Dio)
- PHP (REST API sederhana)
- MySQL / phpMyAdmin (XAMPP)

## Struktur Repository

```
.
├── lib/                    # Kode Flutter
├── backend/
│   ├── api.php             # REST API CRUD produk
│   ├── import.php          # Import data produk dari DummyJSON ke MySQL
│   └── update_thumbnail.php# Mengisi kolom thumbnail dari DummyJSON
├── database.sql            # Export database db_produk
├── pubspec.yaml
└── README.md
```

## Cara Menjalankan

### 1. Siapkan database
1. Jalankan **Apache** dan **MySQL** di XAMPP.
2. Buka `http://localhost/phpmyadmin`.
3. Buat database baru bernama **db_produk**.
4. Pilih database tersebut, klik tab **Import**, lalu pilih file `database.sql`.

### 2. Pasang backend
1. Salin folder `backend` ke folder `htdocs` XAMPP dan ubah namanya menjadi `products_api`
   (contoh: `C:\xampp\htdocs\products_api\`).
2. Cek di browser: `http://localhost/products_api/api.php`. Harus tampil data produk dalam format JSON.

### 3. Jalankan aplikasi Flutter
1. Buka `lib/services/api_services_product.dart`, lalu sesuaikan `baseUrl`:

   | Dijalankan di | baseUrl |
   |---|---|
   | Edge / Chrome (web) | `http://localhost/products_api/api.php` |
   | Emulator Android | `http://10.0.2.2/products_api/api.php` |
   | HP asli (satu WiFi) | `http://IP_LAPTOP/products_api/api.php` |

2. Install dependensi dan jalankan:
   ```
   flutter pub get
   flutter run -d edge
   ```

> Untuk Android, tambahkan `android:usesCleartextTraffic="true"` pada tag `<application>` di `android/app/src/main/AndroidManifest.xml` karena API memakai `http`.

## Endpoint API

Base URL: `http://localhost/products_api/api.php`

| Method | URL | Fungsi |
|---|---|---|
| GET | `api.php` | Ambil semua produk |
| GET | `api.php?id=1` | Ambil satu produk |
| POST | `api.php` | Tambah produk (body JSON: `title`, `price`, `category`) |
| PUT | `api.php?id=1` | Ubah produk (body JSON: `title`, `price`, `category`) |
| DELETE | `api.php?id=1` | Hapus produk |
