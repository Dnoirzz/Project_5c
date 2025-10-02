import 'package:flutter/material.dart';

class DataPribadiScreen extends StatelessWidget {
  const DataPribadiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulir Pendaftaran"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Formulir Pendaftaran Mahasiswa Baru",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Lengkapi semua informasi yang diperlukan untuk menyelesaikan pendaftaran",
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Progress Step (dummy)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStep("Data Pribadi", true),
                _buildStep("Data Akademik", false),
                _buildStep("Data Orang Tua", false),
                _buildStep("Upload Dokumen", false),
                _buildStep("Review", false),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              "Data Pribadi",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Informasi personal dan kontak",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 16),

            // Form Input
            TextField(
              decoration: InputDecoration(
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "NIK",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Tempat Lahir",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: "Tanggal Lahir",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Button Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Sebelumnya"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/dataAkademik");
                  },
                  child: const Text("Selanjutnya"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Step indicator (bulat kecil + teks)
  Widget _buildStep(String title, bool isActive) {
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: isActive ? Colors.blue : Colors.grey[300],
          child: Icon(
            Icons.check,
            color: isActive ? Colors.white : Colors.grey[600],
            size: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: isActive ? Colors.blue : Colors.grey,
          ),
        ),
      ],
    );
  }
}
