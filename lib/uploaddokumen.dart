import 'package:flutter/material.dart';
import 'package:portal_mhs/dataorangtua.dart';

void main() {
  runApp(MaterialApp(
    home: DataDokumenScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class DataDokumenScreen extends StatelessWidget {
  const DataDokumenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F6C7A),
        elevation: 0,
        title: const Text(
          "Formulir Pendaftaran",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
          )
        ],
      ),

      // body form
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            // Header
            Container(
              color: const Color(0xFF2C3E50),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF4F6C7A),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: const Offset(0, 4),
                      blurRadius: 8,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            "Formulir Pendaftaran Mahasiswa Baru",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            "4 dari 5",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Lengkapi semua informasi yang diperlukan untuk menyelesaikan pendaftaran",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),

            // Tab Navigasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _tabItem(Icons.person, "Data Pribadi", false),
                    _tabItem(Icons.school, "Data Akademik", false),
                    _tabItem(Icons.group, "Data Orang Tua", false),
                    _tabItem(Icons.upload_file, "Upload Dokumen", true),
                    _tabItem(Icons.check_circle, "Review & Submit", false),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Card Upload Dokumen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.upload_file_outlined,
                                color: Colors.blue),
                            SizedBox(width: 8),
                            Text(
                              "Upload Dokumen",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text("Informasi personal dan kontak",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 12),

                        // Daftar Upload
                        _uploadCard("Ijazah/SKL"),
                        _uploadCard("Kartu Keluarga"),
                        _uploadCard("Akta Kelahiran"),
                        _uploadCard("Pas Foto 3x4"),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),

      // bagian bawah (fixed)
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Baris atas (Sebelumnya + Simpan Draft)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tombol Sebelumnya
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.grey.shade100,
                  ),
                  child: const Text("<   Sebelumnya",
                      style: TextStyle(color: Colors.grey)),
                ),
                // Tombol Simpan Draft
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.save_outlined, size: 18),
                      SizedBox(width: 6),
                      Text("Simpan Draft"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Tombol Selanjutnya
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DataOrangTuaScreen()),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: const Text("Selanjutnya   >",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tabItem(IconData icon, String title, bool active) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: active ? Colors.blue : Colors.grey.shade400,
              width: 2,
            ),
            color: Colors.white,
          ),
          child: Icon(
            icon,
            color: active ? Colors.blue : Colors.grey[600],
            size: 20,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 60,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: active ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  Widget _uploadCard(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              offset: const Offset(0, 2),
              blurRadius: 4,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.upload_rounded, size: 28, color: Colors.black54),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              "Max 2MB, PDF/JPG",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // aksi pilih file nanti
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black87,
                side: const BorderSide(color: Colors.black26),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text("Pilih File"),
            ),
          ],
        ),
      ),
    );
  }
}
