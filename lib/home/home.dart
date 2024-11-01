import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const Color hijau = Color(0xFF859F3D);
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Center(child: Text('Transaksi Screen')),
    Center(child: Text('History Transaksi Screen')),
    Center(child: Text('Profil Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('Home'),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: [
                'asset/Perpusku_logo.jpg',
                'asset/Membaca_Buku.jpg',
                'asset/slide2.png',
                'asset/slide3.png',
              ].map((item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            // Reusable widget for Cafe Cards
            cafeCard(
              imagePath: 'asset/cinta_meow.jpeg',
              title: 'Cinta Meow Cafe',
              onTap: () => Navigator.pushNamed(context, '/detail1'),
            ),
            SizedBox(height: 16.0),
            cafeCard(
              imagePath: 'asset/cinta_meow.jpeg',
              title: 'Cinta Meow Cafe',
              onTap: () => Navigator.pushNamed(context, '/detail1'),
            ),
            SizedBox(height: 16.0),
            cafeCard(
              imagePath: 'asset/cinta_meow.jpeg',
              title: 'Cinta Meow Cafe',
              onTap: () => Navigator.pushNamed(context, '/detail1'),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable widget for Cafe Card
  Widget cafeCard(
      {required String imagePath,
      required String title,
      required VoidCallback onTap}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              child: Text('Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
