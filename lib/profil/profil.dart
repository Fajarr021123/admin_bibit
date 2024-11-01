import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const Color hijau = Color(0xFF859F3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            // Bagian Informasi Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nama Pengguna',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'email@example.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 24.0),

            // Pengaturan Akun
            Card(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person, color: hijau),
                    title: Text('Edit Profil'),
                    onTap: () {
                      // Aksi untuk mengedit profil
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.lock, color: hijau),
                    title: Text('Ubah Kata Sandi'),
                    onTap: () {
                      // Aksi untuk mengubah kata sandi
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.notifications, color: hijau),
                    title: Text('Notifikasi'),
                    onTap: () {
                      // Aksi untuk membuka pengaturan notifikasi
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.help_outline, color: hijau),
                    title: Text('Bantuan & Dukungan'),
                    onTap: () {
                      // Aksi untuk membuka bantuan & dukungan
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),

            // Tombol Logout
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Aksi untuk logout
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
