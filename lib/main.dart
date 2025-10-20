import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Modern Profile UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Profile Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 🔹 Foto Profil
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            const SizedBox(height: 15),

            // 🔹 Nama & Jabatan
            const Text(
              "Bimas Najid Ilmansyah",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const Text(
              "Software Developer | UI/UX Enthusiast",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(height: 20),

            // 🔹 Informasi Kontak (Row + Icon)
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.indigo),
                        SizedBox(width: 10),
                        Text("bimasnajid@example.com"),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.indigo),
                        SizedBox(width: 10),
                        Text("+62 812 3456 7890"),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.indigo),
                        SizedBox(width: 10),
                        Text("Sidoarjo, Indonesia"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Tombol Aksi
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.work),
                  label: const Text("Portfolio"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                  label: const Text("Hire Me"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // 🔹 Deskripsi Singkat
            const Text(
              "Saya seorang pengembang perangkat lunak yang berfokus pada "
              "pengembangan aplikasi berbasis Flutter dan Next.js. "
              "Saya senang menciptakan antarmuka yang bersih, fungsional, dan efisien "
              "untuk mendukung pengalaman pengguna yang luar biasa.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),

            const SizedBox(height: 25),
            const Divider(),

            // 🔹 Media Sosial (Row dengan Icon)
            const Text(
              "Find Me On",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.indigo),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.linked_camera, color: Colors.purple),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.language, color: Colors.blueGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
