
# jdih_kota_madiun

## Catatan Progress (15/09/2025)

### 1. Analisis & Perbaikan Konfigurasi Project

- Cek struktur folder dan file Flutter project, pastikan pubspec.yaml, folder android/ios, assets, dan struktur lib/ sudah lengkap.
- Jika build error karena environment, sesuaikan versi Gradle, AGP (Android Gradle Plugin), dan Kotlin agar cocok dengan Java 21 dan Flutter 3.35.3. Update file `android/build.gradle`, `android/app/build.gradle`, dan gradle wrapper.
- Update dependency di pubspec.yaml ke versi stable Flutter terbaru, termasuk plugin seperti `flutter_inappwebview`, `permission_handler`, dan lainnya.
- Pastikan semua dependency dan asset sudah terdaftar di pubspec.yaml, lalu bereskan error dependency conflict dan warning pub outdated.
- Jalankan `flutter pub get`, `flutter clean`, dan build ulang sampai aplikasi bisa dijalankan tanpa error.
- Untuk Android, update minSdkVersion, compileSdkVersion, dan targetSdkVersion di android/app/build.gradle. Untuk iOS, cek konfigurasi jika diperlukan.


### 2. Refaktor Navigasi & Struktur UI
- Rombak struktur aplikasi jadi modular: setiap menu utama punya file/page sendiri.
- Implementasi global BottomNavigationBar (navbar bawah) dengan ikon asset agar mirip desain web.
- Urutan dan ikon navbar disesuaikan permintaan, termasuk menggabungkan menu Kontak ke submenu Profil.


### 3. Menu & Submenu Konsisten Web
- Rombak menu utama dan submenu supaya sesuai struktur web/newUI.dart.
- Untuk submenu di Profil, Produk Hukum, Dokumen Lainnya, dan menu lain yang punya sub menu, gunakan ListView.
- Grup submenu Dokumen Lainnya sesuai permintaan (nested submenu: Monografi Hukum, Putusan/Yurisprudensi, Surat Edaran, dll).


### 4. Penyempurnaan Tampilan
- Semua halaman submenu menggunakan Card, icon, border oranye (#ffb13b), ripple oranye, dan AppBar hitam dengan judul putih bold di tengah.
- Tone warna dan UX konsisten dengan website JDIH Kota Madiun.


### 5. Perbaikan Error & Validasi
- Perbaiki error sintaks, kurung kurawal, dan import yang muncul.
- Pastikan semua halaman dan navigasi berjalan tanpa error.
- Semua AppBar (termasuk di WebView) judulnya di tengah.


### 6. Dokumentasi & Komunikasi
- Catat dan dokumentasikan setiap perubahan secara ringkas.
- Respons dan implementasikan semua permintaan perubahan UI/UX, struktur, dan navigasi sesuai instruksi.

---

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
