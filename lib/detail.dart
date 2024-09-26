import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart'; // For Iconify Widget
import 'package:iconify_flutter/icons/mdi.dart'; // Import specific icon set (e.g., Material Design Icons)
import 'package:iconify_flutter/icons/icon_park_solid.dart'; // Import specific icon set (e.g., icon park solid)


class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Bagian Profile
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/ayestha.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Kayla Ayestha Bachrie',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              // Bagian About
              Container(
                margin: const EdgeInsets.only(bottom: 18.0),
                decoration: BoxDecoration(
                  // color: Color(0xFFC1D8C3),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpeg'),
                    fit: BoxFit.cover, // Mengatur gambar agar mengisi container
                  ),
                ),
                child: ListTile(
                  title: const Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: const Text(
                    'I am a student at SMK Wikrama Bogor, majoring in Software and Game Development (PPLG), with a great interest in the IT field. In addition, I am very passionate about sports and always eager to explore new things. I easily adapt to various situations, and new challenges motivate me to keep learning and achieving my goals.',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),

              // Bagian History
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: ListTile(
                    title: const Text(
                      'History',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown,
                      ),
                    ),
                    subtitle: Column( // Ganti Row dengan Column
                      crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi di kiri
                      children: <Widget>[
                        Row(
                          children: const [
                            Iconify(
                              Mdi.academic_cap, // Gunakan ikon yang diinginkan
                              color: Colors.brown,
                              size: 24, // Atur ukuran ikon
                            ),
                            SizedBox(width: 8.0), // Jarak antara ikon dan teks
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi di kiri
                              children: <Widget>[
                                Text(
                                  '2022-2025',
                                  style: TextStyle(fontSize: 12), // Gaya untuk teks tahun
                                ),
                                Text(
                                  'SMK Wikrama Bogor',
                                  style: TextStyle(fontSize: 12), // Gaya untuk nama sekolah
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4.0), // Jarak antara dua subtitle row
                        Row(
                          children: const [
                            Iconify(
                              IconParkSolid.retro_bag, // Gunakan ikon yang sama atau berbeda
                              color: Colors.brown,
                              size: 24, // Atur ukuran ikon
                            ),
                            SizedBox(width: 8.0), // Jarak antara ikon dan teks
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Mengatur posisi di kiri
                              children: <Widget>[
                                Text(
                                  'January-June', // Ganti teks sesuai kebutuhan
                                  style: TextStyle(fontSize: 12), // Gaya untuk teks tahun
                                ),
                                Text(
                                  'PT LSKK', // Ganti teks sesuai kebutuhan
                                  style: TextStyle(fontSize: 12), // Gaya untuk nama sekolah
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )


              ),

              // Bagian Skill
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                decoration: BoxDecoration(
                  // color: Color(0xFFC1D8C3),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpeg'),
                    fit: BoxFit.cover, // Mengatur gambar agar mengisi container
                  ),
                ),
                child: ListTile(
                  title: const Text(
                    'Skill',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "HTML",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                          "CSS",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                      ),
                      Text(
                          "Javascript",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
