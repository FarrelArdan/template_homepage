import 'package:flutter/material.dart';

class HomeBeranda extends StatefulWidget {
  const HomeBeranda({super.key});

  @override
  State<HomeBeranda> createState() => _HomeBerandaState();
}

class _HomeBerandaState extends State<HomeBeranda> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Setting Page')),
    Center(child: Text('QR Code Page')),
    Center(child: Text('Card Page')),
    Center(child: Text('Key Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBar bottomNavigatorBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR Code"),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        BottomNavigationBarItem(icon: Icon(Icons.lock), label: "Key"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Identitas Kependudukan Digital",),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: bottomNavigatorBar(),
    );
  }
}
