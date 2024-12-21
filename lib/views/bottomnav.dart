import 'package:bite_buddy/views/home_page.dart';
import 'package:bite_buddy/views/order.dart';
import 'package:bite_buddy/views/profile.dart';
import 'package:bite_buddy/views/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homepage;
  late WalletPage walletpage;
  late OrderPage orderpage;
  late ProfilePage profilepage;

  @override
  void initState() {
    
    homepage = HomePage();
    walletpage = WalletPage();
    orderpage = OrderPage();
    profilepage = ProfilePage();
    pages = [homepage, orderpage, walletpage, profilepage];

    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(microseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
        },
        items: [

          Icon(Icons.home_outlined,
          color: Colors.white,
          ),
          Icon(Icons.shopping_bag_outlined,
          color: Colors.white,
          ),
          Icon(Icons.wallet_outlined,
          color: Colors.white,
          ),
          Icon(Icons.person_outlined,
          color: Colors.white,
          ),

        ]
        
        ),
        body: pages[currentTabIndex],
    );
  }
}