// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Tambahkan import ini untuk menggunakan SystemNavigator

class Hal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start, // Atur align ke kiri
            children: [
              // Logo Icon and Title
              Align(
                alignment: Alignment.centerLeft, // Logo dan Tagline ke kiri
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Icon Chart sebagai logo
                    Icon(
                      Icons.bar_chart, // Ganti dengan icon chart atau lainnya
                      size: 120,
                      color: Color(0xFF6C63FF), // Warna yang sama seperti teks
                    ),
                    SizedBox(height: 10),
                    // Tagline
                    Text(
                      'Fast,\nReliable,\nAffordable',
                      textAlign: TextAlign.left, // Atur agar teks align ke kiri
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF6C63FF),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              // Gambar Mobil dengan Mekanik
              Center(
                child: Image.asset(
                  'assets/Hal1-picture.png',
                  height: 300,
                ),
              ),
              SizedBox(height: 40),

              // Tombol Log In
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/hal2'); // Atur ke route login
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF6C63FF), // warna ungu
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Tombol Keluar
              Center(
                child: OutlinedButton(
                  onPressed: () {
                    // Menutup aplikasi
                    SystemNavigator.pop(); // Keluar dari aplikasi
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                    side: BorderSide(color: Color(0xFF6C63FF), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Keluar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF6C63FF),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Spacer(),
              // Copyright
              Center(
                child: Container(
                  child: Text(
                    'Copyright©2024 ComShop',
                    style: TextStyle(color: Colors.grey),
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
