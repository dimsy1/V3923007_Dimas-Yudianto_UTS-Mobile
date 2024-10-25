import 'package:flutter/material.dart';

class Hal3 extends StatefulWidget {
  @override
  _Hal3State createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Implement navigation here for different index cases
    if (index == 0) {
      Navigator.pushNamed(context, '/beranda');
    } else if (index == 1) {
      Navigator.pushNamed(context, '/promo');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/aktivitas');
    } else if (index == 3) {
      Navigator.pushNamed(context, '/chat');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barang Bekas'),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari Barang Bekas...',
                prefixIcon: Icon(Icons.search, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Color(0xFF6C63FF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Icon(Icons.shopping_cart, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Pilih barang bekas terbaik yang masih berkualitas!',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(text: 'Terkait'),
                      Tab(text: 'Terbaru'),
                      Tab(text: 'Terlaris'),
                    ],
                    indicatorColor: Color(0xFF6C63FF),
                    labelColor: Color(0xFF6C63FF),
                    unselectedLabelColor: Colors.black,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        buildGrid(),
                        buildGrid(),
                        buildGrid(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF6C63FF),
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }

  Widget buildGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.6,
      ),
      itemCount: 6, // Jumlah produk barang bekas
      itemBuilder: (context, index) {
        return buildProductCard(index);
      },
    );
  }

  Widget buildProductCard(int index) {
    // Daftar nama produk dan harga barang bekas
    final products = [
      {"name": "VGA bekas", "price": "Rp. 2.500.000", "image": "assets/gtx1660.png"},
      {"name": "Keyboard Bekas", "price": "Rp. 150.000", "image": "assets/keyboard-bekas.webp"},
      {"name": "Mouse Bekas", "price": "Rp. 50.000", "image": "assets/mouse-bekas.png"},
      {"name": "Monitor Bekas", "price": "Rp. 800.000", "image": "assets/monitor-bekas.avif"},
      {"name": "PC Bekas", "price": "Rp. 3.000.000", "image": "assets/pc-bekas.png"},
      {"name": "Printer Bekas", "price": "Rp. 500.000", "image": "assets/printer-bekas.png"},
    ];

    final product = products[index % products.length];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              product['image']!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product['name']!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            product['price']!,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              Text('4.5', style: TextStyle(fontSize: 12)),
              Text(' • ', style: TextStyle(fontSize: 12)),
              Text('200 Terjual', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
