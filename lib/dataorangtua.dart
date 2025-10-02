import 'package:flutter/material.dart';
import 'package:portal_mhs/uploaddokumen.dart';

void main() {
  runApp(MaterialApp(
    home: DataOrangTuaScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class DataOrangTuaScreen extends StatelessWidget {
  const DataOrangTuaScreen({super.key});

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
            // Header dengan efek mengambang
            Container(
              color: const Color(0xFF2C3E50), // background gelap di belakang
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF4F6C7A), // warna biru utama
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
                            "3 dari 5",
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
                    _tabItem(Icons.group, "Data Orang Tua", true),
                    _tabItem(Icons.upload_file, "Upload Dokumen", false),
                    _tabItem(Icons.check_circle, "Review & Submit", false),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Card Data Pribadi
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
                            Icon(Icons.group),
                            SizedBox(width: 8),
                            Text(
                              "Data Orang Tua",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text("Informasi personal dan kontak",
                            style: TextStyle(fontSize: 12, color: Colors.grey)),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Row(
                            children: [
                              Icon(Icons.description_outlined,
                                  color: Colors.grey),
                              SizedBox(width: 8),
                              Expanded(
                                  child: Text(
                                "Formulir data orang tua akan ditampilkan di sini. ini adalah versi mock untuk demo",
                                style: TextStyle(fontSize: 12),
                              ))
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        _inputField("Nama Ayah"),
                        _inputField("Nama Ibu"),
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
                        builder: (context) => const DataDokumenScreen()),
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
          width: 60, // biar teks panjang tetap turun ke bawah
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

  Widget _inputField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.blue, width: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
