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
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> cardColors = [
      Colors.blue,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.orangeAccent,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/img/profil.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "Aryamukti Satria Hendrayana",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("123220181",
                style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8)),
                  child: const Text("Tombol 1", style: TextStyle(fontSize: 14)),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8)),
                  child: const Text("Tombol 2", style: TextStyle(fontSize: 14)),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8)),
                  child: const Text("Tombol 3", style: TextStyle(fontSize: 14)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0), // Padding dikurangi
                child: GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(), // Grid tetap tanpa scroll
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Card(
                      color: cardColors[index],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: FlutterLogo(size: 40),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
