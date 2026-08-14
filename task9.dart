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
      home: Scaffold(
        backgroundColor: const Color(0xFF0F172A),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Ahmed Mohamed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                infoCard(Icons.phone, '+20 100 123 4567'),

                infoCard(Icons.email, 'ahmed@gmail.com'),

                infoCard(Icons.location_on, 'Alexandria, Egypt'),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon(Icons.facebook),
                    const SizedBox(width: 15),
                    socialIcon(Icons.work),
                    const SizedBox(width: 15),
                    socialIcon(Icons.alternate_email),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget infoCard(IconData icon, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 6,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.amber),
          const SizedBox(width: 15),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  static Widget socialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.amber),
      ),
      child: Icon(
        icon,
        color: Colors.amber,
      ),
    );
  }
}
