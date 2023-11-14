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

### Bagaimana penerapan clean architecture pada aplikasi Flutter?

Dengan menerapkan separation of concerns, file / widget dipisahkan agar memudahkan developer untuk menentukan titik kesalahan ketika terjadi error

### Cara menerapkan
- Cari tutorial buat form
- Cari dokumentasi buat drawer
- Gabungin semuanya pas ngoding
- Ubah styling dikit