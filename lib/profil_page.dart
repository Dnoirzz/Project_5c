import 'package:flutter/material.dart';
import 'widgets/app_pading.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C3E50),
        elevation: 0,
        title: const Text(
          "Profil Saya",
          style: TextStyle(
            color: Colors.white,
            fontSize: AppPadding.fontSize16,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: const [
          Padding(
            padding: AppPadding.right12,
            child: CircleAvatar(
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.bottom80,
        child: Column(
          children: [
            // Profile Summary Section
            Container(
              padding: AppPadding.all16,
              decoration: const BoxDecoration(
                color: Color(0xFF4F6C7A),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppPadding.radius16),
                  bottomRight: Radius.circular(AppPadding.radius16),
                ),
              ),
              child: Row(
                children: [
                  // Profile Avatar
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: AppPadding.width2,
                      ),
                      color: Colors.white24,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: AppPadding.width8),
                  // Profile Information
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Aldi Mahendra",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppPadding.fontSize18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: AppPadding.symmetric4_12,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF7DC6F),
                                borderRadius: BorderRadius.circular(
                                  AppPadding.radius8,
                                ),
                              ),
                              child: const Text(
                                "Status: menunggu Verifikasi",
                                style: TextStyle(
                                  color: Color(0xFF2C3E50),
                                  fontSize: AppPadding.fontSize11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppPadding.height4),
                        const Text(
                          "NIM: 2024001645",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: AppPadding.fontSize12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Navigation Tabs
            Container(
              color: Colors.white,
              padding: AppPadding.vertical16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTab("Data Pribadi", true),
                  _buildTab("Informasi Ak", false),
                  _buildTab("Data Orang tua", false),
                  _buildTab("Dokumen", false),
                ],
              ),
            ),

            const SizedBox(height: AppPadding.height12),

            // Personal Information Section
            Padding(
              padding: AppPadding.horizontal12,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppPadding.radius12),
                ),
                elevation: 1,
                child: Padding(
                  padding: AppPadding.all16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.person_outline),
                          SizedBox(width: AppPadding.width8),
                          Text(
                            "Informasi Pribadi",
                            style: TextStyle(
                              fontSize: AppPadding.fontSize16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppPadding.height4),
                      const Text(
                        "Data Pribadi dan informasi kontak",
                        style: TextStyle(
                          fontSize: AppPadding.fontSize12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: AppPadding.height16),
                      _buildInfoRow("Nama Lengkap", "Aldi Mahendra"),
                      _buildInfoRow("NIM", "1234567890123456"),
                      _buildInfoRow(
                        "Tempat, tanggal lahir",
                        "Jakarta, 15/5/2004",
                      ),
                      _buildInfoRow("Jenis Kelamin", "Laki-Laki"),
                      _buildInfoRow("Agama", "Islam"),
                      _buildInfoRow("Golongan Darah", "A"),
                      _buildInfoRow("No. HP", "081234567890"),
                      _buildInfoRow("Email", "Mahasiswa@example.com"),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: AppPadding.height12),

            // Additional sections can be added here
            Padding(
              padding: AppPadding.horizontal12,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppPadding.radius12),
                ),
                elevation: 1,
                child: Padding(
                  padding: AppPadding.all16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.school_outlined),
                          SizedBox(width: AppPadding.width8),
                          Text(
                            "Informasi Akademik",
                            style: TextStyle(
                              fontSize: AppPadding.fontSize16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppPadding.height4),
                      const Text(
                        "Data akademik dan informasi studi",
                        style: TextStyle(
                          fontSize: AppPadding.fontSize12,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: AppPadding.height16),
                      _buildInfoRow("Program Studi", "Teknik Informatika"),
                      _buildInfoRow("Fakultas", "Fakultas Teknik"),
                      _buildInfoRow("Semester", "5"),
                      _buildInfoRow("Tahun Masuk", "2024"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool isActive) {
    return Container(
      padding: AppPadding.symmetric12_16,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue.shade50 : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(AppPadding.radius8),
        border: Border.all(
          color: isActive ? Colors.blue : Colors.grey.shade300,
          width: AppPadding.width2,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: AppPadding.fontSize12,
          fontWeight: FontWeight.w500,
          color: isActive ? Colors.blue : Colors.grey.shade600,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: AppPadding.bottom12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: AppPadding.fontSize12,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: AppPadding.height4),
          Container(
            width: double.infinity,
            padding: AppPadding.symmetric14_12,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(AppPadding.radius8),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Text(
              value,
              style: const TextStyle(
                fontSize: AppPadding.fontSize12,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
