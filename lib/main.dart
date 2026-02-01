import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: UserInfoView());
  }
}

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        actions: [Icon(Icons.more_vert, color: Color(0xFFDBDBDB))],
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ln.jpg'),
                  radius: 60,
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Color(0xFF64C288),
                    child: Icon(Icons.check, color: Colors.white, size: 15),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),
            Text(
              "Adham Abdelsalam",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 12),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFFD3D3D3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
