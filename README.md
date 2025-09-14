

# JDIH Kota Madiun

## Konfigurasi Lingkungan Pengembangan

### Environment & Tools

- **Flutter SDK**: 3.13.9 (pastikan sesuai dengan versi pada pubspec.yaml dan hasil `flutter --version`)
- **Dart SDK**: 3.1.5
- **Android Gradle Plugin (AGP)**: 8.1.2
- **Gradle Wrapper**: 8.2.1
- **Kotlin**: 1.9.10
- **Java**: OpenJDK 21 (Java 21)
- **Android SDK**: API 34 (compileSdkVersion 34, targetSdkVersion 34, minSdkVersion 21)
- **Xcode**: 15.x (untuk build iOS, jika diperlukan)
- **Dependency utama**:
	- flutter_inappwebview: ^6.0.0
	- permission_handler: ^11.0.1
	- (lihat pubspec.yaml untuk daftar lengkap)

### Perintah Penting

- `flutter pub get` — sinkronisasi dependency
- `flutter clean` — membersihkan build cache
- `flutter run` — menjalankan aplikasi
- `flutter build apk` — build release Android
- `flutter build ios` — build release iOS

---


## Catatan Progress (15/09/2025)


### 1. Analisis & Perbaikan Konfigurasi Project

- Audit struktur folder dan file project Flutter untuk memastikan kelengkapan pubspec.yaml, direktori android/ios, assets, dan struktur lib/.
- Jika terjadi error build terkait environment, lakukan penyesuaian versi Gradle, AGP, dan Kotlin agar kompatibel dengan Java 21 dan Flutter 3.13.9. Update file `android/build.gradle`, `android/app/build.gradle`, dan gradle wrapper sesuai kebutuhan.
- Update dependency pada pubspec.yaml ke versi stabil terbaru, termasuk plugin utama seperti `flutter_inappwebview` dan `permission_handler`.
- Validasi seluruh dependency dan asset sudah terdaftar di pubspec.yaml, selesaikan konflik dependency dan warning pub outdated.
- Jalankan perintah `flutter pub get`, `flutter clean`, dan build ulang hingga aplikasi berjalan tanpa error.
- Untuk Android, pastikan minSdkVersion, compileSdkVersion, dan targetSdkVersion diatur pada 21/34/34 di android/app/build.gradle. Untuk iOS, lakukan pengecekan konfigurasi jika diperlukan.



### 2. Refaktor Navigasi & Struktur UI
- Restrukturisasi aplikasi menjadi modular, di mana setiap menu utama diimplementasikan dalam file/page terpisah.
- Implementasi global BottomNavigationBar menggunakan ikon asset untuk konsistensi dengan desain web.
- Penyesuaian urutan dan ikon navbar sesuai permintaan, termasuk integrasi menu Kontak ke dalam submenu Profil.



### 3. Menu & Submenu Konsisten Web
- Penyesuaian struktur menu utama dan submenu agar identik dengan struktur pada web/newUI.dart.
- Implementasi ListView untuk submenu pada Profil, Produk Hukum, Dokumen Lainnya, dan menu lain yang memiliki sub menu.
- Pengelompokan submenu Dokumen Lainnya sesuai permintaan (nested submenu: Monografi Hukum, Putusan/Yurisprudensi, Surat Edaran, dan lain-lain).



### 4. Penyempurnaan Tampilan
- Seluruh halaman submenu menggunakan Card, ikon, border oranye (#ffb13b), efek ripple oranye, dan AppBar hitam dengan judul putih tebal di tengah.
- Skema warna dan UX diselaraskan dengan website JDIH Kota Madiun.



### 5. Perbaikan Error & Validasi
- Koreksi error sintaks, kurung kurawal, dan import yang terdeteksi selama proses pengembangan.
- Validasi seluruh halaman dan navigasi agar berjalan tanpa error.
- Seluruh AppBar (termasuk di WebView) dipastikan memiliki judul di tengah.



### 6. Dokumentasi & Komunikasi
- Dokumentasikan setiap perubahan secara ringkas dan sistematis.
- Implementasikan seluruh permintaan perubahan UI/UX, struktur, dan navigasi sesuai instruksi dan best practice pengembangan aplikasi.

---

samples, guidance on mobile development, and a full API reference.

## Getting Started

1. Pastikan seluruh environment sesuai dengan konfigurasi di atas.
2. Jalankan `flutter pub get` untuk mengunduh dependency.
3. Gunakan `flutter run` untuk menjalankan aplikasi pada emulator atau perangkat fisik.
4. Untuk build release, gunakan `flutter build apk` (Android) atau `flutter build ios` (iOS).

Referensi tambahan:
- [Flutter Documentation](https://docs.flutter.dev/)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
