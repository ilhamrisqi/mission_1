// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  bool buttonColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        
        title: Text(
          "Mission 1",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,

          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        child: Image.asset(
                          'images/gambargedung1.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 1.2,
                                    child: Image.asset(
                                      'images/kamarmandihotel.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 1.2,
                                    child: Image.asset(
                                      'images/kamarhotel.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 1.2,
                                    child: Image.asset(
                                      'images/ngopihotel.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AspectRatio(
                                    aspectRatio: 1.2,
                                    child: Image.asset(
                                      'images/loronghotel.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Text(
                          "Selamat Datang di OYO Surabaya Barat",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              '''Saat Anda memasuki Hotel OYO Surabaya Barat, Anda akan segera merasakan atmosfer yang ramah dan mengundang. Lobby yang luas dan bersih memberikan kesan pertama yang positif kepada para tamu. Dengan senyum hangat, staf hotel menyambut Anda dengan penuh keramahan, siap untuk memberikan bantuan dan informasi yang Anda butuhkan selama menginap. Mereka menjadikan pengalaman Anda di hotel ini sangat istimewa.

Selain fasilitas kamar yang nyaman, Hotel OYO Surabaya Barat juga menawarkan beragam pilihan kuliner yang lezat. Restoran di hotel ini menyajikan hidangan lokal dan internasional dengan cita rasa yang memanjakan lidah Anda. Nikmati santapan lezat ini sambil menikmati pemandangan indah dari jendela restoran.

Hotel ini juga menawarkan berbagai fasilitas tambahan, termasuk pusat kebugaran yang modern, kolam renang yang menyegarkan, dan spa yang menghadirkan perawatan kecantikan dan relaksasi yang luar biasa. Anda dapat merasa segar dan bugar setelah menjalani berbagai aktivitas di hotel ini.

Terlepas dari tujuan perjalanan Anda, Hotel OYO Surabaya Barat adalah tempat yang sempurna untuk menginap. Dengan pelayanan yang ramah, fasilitas yang lengkap, dan pemandangan yang menakjubkan, Anda akan merasa puas dengan pengalaman Anda di sini. Tidak heran banyak tamu yang kembali lagi dan lagi untuk menikmati semua yang ditawarkan oleh hotel ini. Jadi, jika Anda mencari tempat menginap yang istimewa di Surabaya Barat, pilihlah Hotel OYO Surabaya Barat sebagai pilihan Anda.''',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  buttonColor = !buttonColor;
                });
              },
              backgroundColor: Colors.grey,
              shape: CircleBorder(),
              child: Icon(
                Icons.favorite,
                color: buttonColor ? Colors.white : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
