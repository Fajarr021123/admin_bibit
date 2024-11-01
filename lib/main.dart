import 'package:flutter/material.dart';

import 'splash_screen/splash_screen.dart';
import 'login/login.dart';
import 'home/home.dart';
import 'produk/produk.dart';
import 'transaksi/transaksi.dart';
import 'battom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin_Taniku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) =>
            CustomBottomNavBar(), // Navigasi utama menggunakan BottomNavBar
        '/detail1': (context) => DetailProdukScreen1(),
        '/detail2': (context) => DetailProdukScreen2(),
        '/detail3': (context) => DetailProdukScreen3(),
        '/detail4': (context) => DetailProdukScreen4(),
        '/transaksi': (context) => TransaksiScreen(),
      },
    );
  }
}
