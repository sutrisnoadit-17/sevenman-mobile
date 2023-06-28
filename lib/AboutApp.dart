import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project3/componens/FontNColor.dart';

class TApp extends StatelessWidget {
  const TApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Tentang App',
            style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(22, 106, 22, 20),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // SizedBox(height: 40,),

              Row(
                children: [
                  Text(
                    'Nama Aplikasi: SevenMan Mobile',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Versi: 1.0',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Dekripsi: SeVenMan Mobile adalah sistem aplikasi manajemen inventaris dan peminjaman di Lab Informatika',
                style: TextStyle(fontSize: 16, color: fcolor),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Developer: Infotech 2023',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Hak Cipta . 2023 Infotech UMM',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lisensi: Aplikasi dilisensikan dibawah Infotech UMM',
                style: TextStyle(fontSize: 16, color: fcolor),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Kunjingi situs web infotech di <email infotech> untuk informasi lebih lanjut',
                style: TextStyle(fontSize: 16, color: fcolor),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Kebijakan Privasi: <>',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Persyaratan Layanan <>',
                    style: TextStyle(fontSize: 16, color: fcolor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
            ]),
      ),
    );
  }
}
