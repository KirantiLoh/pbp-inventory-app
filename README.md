# Inventory Tracker

### 1. Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

- Stateless: Ga ada state, hanya menampilkan suatu tampilan kepada user
- Stateful: Ada state, terdapat data yang diatur dalam component

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing

- Container: Kyk div di html
- Center: Container yang isinya ditaro tengah
- Column: Kyk flex dengan `flex-direction: column;`
- Padding: Container yang bisa dikasih padding
- Icon: Ya icon
- SizedBox: Container yg bisa diatur ukurannya
- Expanded: Container yang ambil seluruh ukuran dari parent
  
### 3.Cara Implementasi
- Cari google widget yang diperlukan
- Coding
- Ulangin sampe kelar

### 4. Perbedaan antara Navigator.push() dan Navigator.pushReplacement() serta contoh

History page yang telah dibuka / di-navigate berbentuk stack
- Navigator.push(): Menambahkan page baru ke atas stack, contoh dipakai ketika melihat list item dan navigasi ke detail item, ini memudahkan navigasi kembali ke page list item
- Navigator.pushReplacement(): Mengubah page paling atas menjadi page baru, dipakai ketika navigasi dari login ke home, menyulitkan navigasi kembali dari home ke login (Kecuali logout)

### 5. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing

- Column: Arahnya vertikal
- Row: Arahnya horizontal
- Flex: Mentahannya Column sama Row (bisa lakuin apa yang keduanya bisa)
- Grid: Kyk excel
- Align: Bisa taro dimana secara horizontal (Kiri kanan tengah)
- Center: Taro ditengah secara vertikal & horizontal
- Expanded: Ambil sisa space di parent yg flex, column, ato row

### 6. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Hanya TextFormField(), karena cukup dengam validator manual sudah cukup untuk handle kasus umum

### 7. Bagaimana penerapan clean architecture pada aplikasi Flutter?

Dengan menerapkan separation of concerns, file / widget dipisahkan agar memudahkan developer untuk menentukan titik kesalahan ketika terjadi error

### 8. Cara menerapkan
- Cari tutorial buat form
- Cari dokumentasi buat drawer
- Gabungin semuanya pas ngoding
- Ubah styling dikit

### 9. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, karena pengambilan data JSON tak ada kaitannya dengan model. Hal ini tidak lebih baik karena model dibuat untuk memudahkan kita untuk mengolah data JSON tersebut menjadi data bentuk class Dart yang jauh lebih mudah diolah oleh Dart.

### 10. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest bertujuan untuk mengolah data-data seperti cookies agar user dapat tetap authenticated dan authorized untuk melakukan request ke backend. Instance nya perlu dibagikan kepada semua komponen agar semua komponen mempunyai single source of truth (Agar data muncul di semua tempat secara konsisten)

### 11. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter

- Buat model sesuai skema data
- Buat request
- BE kasih response berupa JSON
- Pake model sebelumnya dan olah data response
- Pake ListView.Builder buat tampilin hasil data dari olahan model

### 12. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter

- User masukin credential di Flutter
- Buat request ke BE Django
- BE Django validasi credential dan hasilin response
- Kalo sukses, BE Django kasih cookies dan response sukses dan user bisa masuk ke home page
- Kalo gagal, BE Django ga kasih cookies dan ga bisa masuk ke home page

### 13. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Yang udah dijelaskan di week sebelumnya tak saya jelaskan lagi
- ListView: Buat tampilin list of item
- Drawer: Menu / Navigation bar buat taro info / navigation ke page lain
- ElevatedButton: Ya tampilin button
- BoxShadow: Kasih bayangan

### 14. Cara menerapkan
- Liat tutorial cara pake packagae pbp_django_auth
- Gabungin semuanya pas ngoding
- Ubah styling dikit