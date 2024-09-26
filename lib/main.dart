import 'package:flutter/material.dart';
import 'package:profile_page/detail.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpeg'),
                  fit: BoxFit.cover, // Mengatur gambar agar mengisi container
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.center, // Center column secara vertikal
                children: [
                  Container(
                    margin: const EdgeInsets.all(
                        20.0), // Margin disekitar container
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            20.0), // Padding didalam container
                        child: Column(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/images/ayestha.jpg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Kayla Ayestha Bachrie',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Vocational High School Student at SMK Wikrama Bogor',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),

                            TextButton(onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailPage()),
                              );
                            }, child: Text(
                                'See More',
                                style: TextStyle(
                                fontSize: 15,
                                color: Colors.green[300],
                                fontWeight: FontWeight.bold,
                                ),
                            )
                            ),
                          ],
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
    );
  }
}