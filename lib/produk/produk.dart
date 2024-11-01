import 'package:Admin_Taniku/home/home.dart';
import 'package:flutter/material.dart';

class DetailProdukScreen1 extends StatelessWidget {
  static const Color hijau = Color(0xFF859F3D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hijau,
        title: Text('Cinta Meow Cafe'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/cinta_meow.jpeg',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Cinta Meow Cafe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Penulis Buku: Ben',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.yellow,
                ),
                SizedBox(width: 4.0),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Menghimpunkan komik-komik pendek karya Ben Wong dalam projek-projek antologi terbitan Komik-M. Kesemuanya 100% berwarna.Turut disertakan coretan, catatan, dan lakaran khas daripada beliau. Paling istimewa, dihidangkan komik bonus dan eksklusif yang berjudul Cinta Meow Cafe.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detail1');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              child: Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailProdukScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kiut Miut'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/kiut_miut.jpeg',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kiut Miut',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Penulis Buku: Jon Suraya',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                SizedBox(width: 4.0),
                Text(
                  '3.0',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Menghimpunkan komik-komik pendek karya Jon Suraya yang pernah diterbitkan dalam projek-projek antologi terbitan Komik-M.'
              'Istimewa dalam edisi kompilasi ini, kesemua komik diwarnakan sepenuhnya. Turut disertakan tutorial dan coretan khas beliau mengenai panduan berkomik buat para pemula yang mahu menceburi bidang komik. Tidak dilupakan, catatan-catatan eksklusif beliau yang menceritakan tentang kisah-kisah di sebalik pembikinan setiap komik.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailProdukScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Senyuman Nadia'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/Senyuman_nadia.jpeg',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Senyuman Nadia',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Penulis Buku: Izatul Husna',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                SizedBox(width: 4.0),
                Text(
                  '4.0',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Kehadiran Nadia di dunia tanpa seorang ibu, mungkin dipandang sinis oleh segelintir masyarakat. Ramai menganggapnya sebagai seorang pembunuh. Punca ibunya meninggal semasa melahirkannya. Bukan Nadia yang pinta. Syukur, ayah menjaga Nadia serba lengkap bak seorang puteri, terima kasih ayah! Dan seorang abang yang sentiasa menyakitkan hati. Urgh!',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailProdukScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spy Hunter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'asset/spy_hunter.png',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Spy Hunter',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Penulis Buku: Ejart14',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                SizedBox(width: 4.0),
                Text(
                  '3.5',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Synopsis',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Esmi Sunka, pewaris takhta Kerajaan Sukangkara telah menerima arahan untuk mengintip pergerakan MUMTAZ di Tanah Utama. Pada awalnya, Esmi menyangka misi ini bakal menjadi pemangkin kepada kejayaannya sebagai Pegawai Muda Sukangkara. Namun, lama kelamaan satu demi satu kebenaran tersingkap di hadapan mata bahawa pewaris takhta Sukangkara itu telah memilih jalan kehidupannya dengan cara yang salah.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
