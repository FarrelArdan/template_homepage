import 'package:flutter/material.dart';

class HomeBeranda extends StatefulWidget {
  const HomeBeranda({super.key});

  @override
  State<HomeBeranda> createState() => _HomeBerandaState();
}

class _HomeBerandaState extends State<HomeBeranda> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const MyHeroWidget(),
    const Center(child: Text('Setting Page')),
    const Center(child: Text('QR Code Page')),
    const Center(child: Text('Card Page')),
    const Center(child: Text('Key Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color blue2 = Color(0xFF3576DE);
    const Color blue3 = Color(0xFF0675D6);
    const Color white1 = Color(0xFFFFFFFF);
    const Color white2 = Color(0xFFf1f1f1);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 270,
            color: blue2,
          ),
          Positioned(
            top: 240,
            left: 0,
            right: 0,
            child: Container(
              height: 600,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          SafeArea(child: _pages[_selectedIndex]),
        ],
      ),

      // floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: blue3,
        foregroundColor: white2,
        onPressed: () => _onItemTapped(2),
        elevation: 9,
        shape: CircleBorder(),
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: white1,

      // bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: white2,
        child: SizedBox(
          height: 60,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home,size: 35),
                padding: EdgeInsets.symmetric(vertical: 6,),
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(0),
              ),
              IconButton(
                icon: const Icon(Icons.settings, size: 35,),
                padding: EdgeInsets.symmetric(vertical: 6),
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(1),
              ),
              IconButton(
                icon: const Icon(Icons.credit_card,size: 35,),
                padding: EdgeInsets.symmetric(vertical: 6),
                color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(3),
              ),
              IconButton(
                icon: const Icon(Icons.lock, size: 35,),
                padding: EdgeInsets.symmetric(vertical: 6),
                color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
                onPressed: () => _onItemTapped(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHeroWidget extends StatelessWidget {
  const MyHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const Color blue = Color(0xFF5795F2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 0, left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/ikd_logo.png",
                width: 24,
                height: 14,
              ),
              const Text(
                "IDENTITAS KEPENDUDUKAN DIGITAL",
                style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.5),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 8, top: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MUHAMMAD ADAM JHANSI",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "3179999999999994",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage("assets/images/ktp_latar_merah3_1.png"),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 70),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Menu",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const MenuGridWidget(),
      ],
    );
  }
}

class MenuGridWidget extends StatelessWidget {
  const MenuGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const Color White03 = Color(0xFFF5FAFF);

    final List<Map<String, String>> menuItems = [
      {'images': "assets/images/biodata.png", 'title': 'Biodata'},
      {'images': 'assets/images/dokumenku.png', 'title': 'Dokumenku'},
      {'images': 'assets/images/data_keluarga.png', 'title': 'Data Keluarga'},
      {'images': 'assets/images/kantor_dukcapil.png', 'title': 'Kantor Dukcapil'},
      {'images': 'assets/images/histori_aktivitas.png', 'title': 'History Aktivitas'},
      {'images': 'assets/images/akses_cepat.png', 'title': 'Akses Cepat'},
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: White03,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        menuItems[index]['images']!,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      menuItems[index]['title']!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 18),
            const Text(
              "Pelayanan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  PelayananButtonWidget(
                    iconPath: "assets/images/dukcapil.png",
                    title: "Dukcapil",
                  ),
                  PelayananButtonWidget(
                    iconPath: "assets/images/monitoring.png",
                    title: "Monitoring",
                  ),
                  PelayananButtonWidget(
                    iconPath: "assets/images/dokumen.png",
                    title: "Dokumen",
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

class PelayananButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback? onTap;

  const PelayananButtonWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF5FAFF),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFF5795F2)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(iconPath, width: 24, height: 24),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 14),
          ],
        ),
      ),
    );
  }
}

