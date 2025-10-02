import 'package:flutter/material.dart';

class AppPadding {
  // General padding values
  static const EdgeInsets all16 = EdgeInsets.all(16);
  static const EdgeInsets all12 = EdgeInsets.all(12);
  static const EdgeInsets all8 = EdgeInsets.all(8);
  static const EdgeInsets all4 = EdgeInsets.all(4);

  // Horizontal padding
  static const EdgeInsets horizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const EdgeInsets horizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets horizontal24 = EdgeInsets.symmetric(horizontal: 24);

  // Vertical padding
  static const EdgeInsets vertical4 = EdgeInsets.symmetric(vertical: 4);
  static const EdgeInsets vertical12 = EdgeInsets.symmetric(vertical: 12);
  static const EdgeInsets vertical14 = EdgeInsets.symmetric(vertical: 14);
  static const EdgeInsets vertical16 = EdgeInsets.symmetric(vertical: 16);

  // Specific padding combinations
  static const EdgeInsets symmetric12_16 = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 16,
  );
  static const EdgeInsets symmetric12_24 = EdgeInsets.symmetric(
    vertical: 12,
    horizontal: 24,
  );
  static const EdgeInsets symmetric4_12 = EdgeInsets.symmetric(
    vertical: 4,
    horizontal: 12,
  );
  static const EdgeInsets symmetric14_12 = EdgeInsets.symmetric(
    vertical: 14,
    horizontal: 12,
  );

  // Bottom padding
  static const EdgeInsets bottom80 = EdgeInsets.only(bottom: 80);
  static const EdgeInsets bottom12 = EdgeInsets.only(bottom: 12);
  static const EdgeInsets bottom10 = EdgeInsets.only(bottom: 10);
  static const EdgeInsets bottom4 = EdgeInsets.only(bottom: 4);

  // Top padding
  static const EdgeInsets top12 = EdgeInsets.only(top: 12);
  static const EdgeInsets top10 = EdgeInsets.only(top: 10);
  static const EdgeInsets top6 = EdgeInsets.only(top: 6);
  static const EdgeInsets top4 = EdgeInsets.only(top: 4);

  // Right padding
  static const EdgeInsets right12 = EdgeInsets.only(right: 12);
  static const EdgeInsets right8 = EdgeInsets.only(right: 8);

  // Left padding
  static const EdgeInsets left8 = EdgeInsets.only(left: 8);

  // Width and height spacing
  static const double width8 = 8.0;
  static const double width6 = 6.0;
  static const double width4 = 4.0;
  static const double width2 = 2.0;

  static const double height80 = 80.0;
  static const double height16 = 16.0;
  static const double height12 = 12.0;
  static const double height10 = 10.0;
  static const double height6 = 6.0;
  static const double height4 = 4.0;

  // Border radius
  static const double radius12 = 12.0;
  static const double radius8 = 8.0;
  static const double radius20 = 20.0;
  static const double radius16 = 16.0;

  // Icon sizes
  static const double iconSize20 = 20.0;
  static const double iconSize18 = 18.0;

  // Font sizes
  static const double fontSize18 = 18.0;
  static const double fontSize16 = 16.0;
  static const double fontSize12 = 12.0;
  static const double fontSize11 = 11.0;
}

// Reusable menus and drawer widgets
class AppMenus {
  static PopupMenuButton<int> profileMenu({
    required ValueChanged<int> onSelected,
  }) {
    return PopupMenuButton<int>(
      icon: const Icon(Icons.account_circle, color: Colors.white, size: 30),
      offset: const Offset(0, 55),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder:
          (context) => [
            PopupMenuItem(
              value: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Aldi Mahendra',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Mahasiswa@example.com',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(Icons.person_outline, size: 18),
                  SizedBox(width: 8),
                  Text('Profil', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 3,
              child: Row(
                children: [
                  Icon(Icons.settings_outlined, size: 18),
                  SizedBox(width: 8),
                  Text(
                    'Settings',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const PopupMenuItem(
              value: 4,
              child: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red, size: 18),
                  SizedBox(width: 8),
                  Text('Keluar', style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ],
      onSelected: onSelected,
    );
  }

  static Drawer dashboardDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: const [
                  Icon(Icons.language, size: 30, color: Color(0xFF233746)),
                  SizedBox(width: 8),
                  Text(
                    'Portal Mahasiswa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF233746),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Aldi Mahendra',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'NIM: 2024001645',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _buildDrawerItem(
                    icon: Icons.dashboard_outlined,
                    title: 'Dashboard',
                    bold: true,
                    onTap: () => Navigator.pop(context),
                  ),
                  _buildDrawerItem(
                    icon: Icons.description_outlined,
                    title: 'Formulir Pendaftaran',
                    bold: true,
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.notifications_outlined,
                    title: 'Pengumuman',
                    bold: true,
                    onTap: () {},
                  ),
                  _buildDrawerItem(
                    icon: Icons.help_outline,
                    title: 'Bantuan',
                    bold: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDrawerItem({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
  bool bold = false,
}) {
  return ListTile(
    leading: Icon(icon, color: Colors.black87),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 14,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        color: Colors.black,
      ),
    ),
    onTap: onTap,
  );
}
