import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  static const Color hijau = Color(0xFF859F3D);

  // Dummy data untuk daftar transaksi
  final List<Map<String, String>> transactions = [
    {
      'image': 'asset/slide1.png',
      'name': 'Produk A',
      'price': 'Rp 100.000',
      'transactionNumber': 'No. Transaksi: 001'
    },
    {
      'image': 'asset/slide2.png',
      'name': 'Produk B',
      'price': 'Rp 150.000',
      'transactionNumber': 'No. Transaksi: 002'
    },
    {
      'image': 'asset/slide3.png',
      'name': 'Produk C',
      'price': 'Rp 200.000',
      'transactionNumber': 'No. Transaksi: 003'
    },
    {
      'image': 'asset/slide2.png',
      'name': 'Produk D',
      'price': 'Rp 250.000',
      'transactionNumber': 'No. Transaksi: 004'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('History Transaksi'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      transaction['image']!,
                      width: 80.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction['name']!,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          transaction['price']!,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.green[700],
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          transaction['transactionNumber']!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
