# H1D023075_Tugas6

```
Nama: Daiva Paundra Gevano
NIM: H1D023075
Shift KRS: F
Shift Baru: A
```

## Screenshot Tampilan
<img width="490" height="874" alt="Screenshot 2025-11-03 202409" src="https://github.com/user-attachments/assets/58c5b874-1957-45be-89e3-0fcf0dc70ed2" />
<img width="491" height="875" alt="Screenshot 2025-11-03 202420" src="https://github.com/user-attachments/assets/5e00aa7b-23ee-494f-b538-f88e4a754097" />

## Penjelasan
File `form_data.dart` berfungsi untuk mengambil input dari pengguna melalui tiga TextField `nama`, `nim`, `tahunLahir`. Setiap input disimpan menggunakan TextEditingController, misalnya:

```dart
final _namaController = TextEditingController();
final _nimController = TextEditingController();
final _tahunLahirController = TextEditingController();
```

Setelah semua data diisi, pengguna menekan tombol Submit, yang akan menjalankan fungsi `Navigator.push()` untuk mengirim data ke halaman tampilan:

```dart
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TampilData(
          nim: _nimController.text,
          nama: _namaController.text,
          tahunLahir: int.parse(_tahunLahirController.text),
        ),
      ),
    );
  },
  child: const Text('Submit'),
),
```

Di sini terjadi proses passing data, di mana nilai dari controller dikirim sebagai parameter konstruktor ke kelas `TampilData`, yang merupakan `StatelessWidget`. Kelas ini menerima data melalui parameter konstruktor:

```dart
final String nim;
final String nama;
final int tahunLahir;

const TampilData({
  Key? key,
  required this.nim,
  required this.nama,
  required this.tahunLahir,
}) : super(key: key);
```

```dart
Text("NIM: $nim"),
Text("Nama: $nama"),
Text("Tahun Lahir: $tahunLahir"),
```