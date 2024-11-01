import 'package:flutter/material.dart';

class TransaksiScreen extends StatelessWidget {
  static const Color hijau = Color(0xFF859F3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('Transaksi'),
        toolbarHeight: 50,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.0),
            // Card Transaksi 1
            Card(
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
                            'asset/cinta_meow.jpeg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Cinta Meow Cafe',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Logika untuk proses transaksi
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: hijau,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          child: Text('Proses'),
                        ),
                        SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Logika untuk selesai transaksi
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          child: Text('Selesai'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Tambahkan lebih banyak card sesuai kebutuhan
            SizedBox(height: 16.0),
            Card(
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
                            'asset/kiut_miut.jpeg',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Kiut Miut Cafe',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Logika untuk proses transaksi
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: hijau,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          child: Text('Proses'),
                        ),
                        SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Logika untuk selesai transaksi
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          child: Text('Selesai'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
