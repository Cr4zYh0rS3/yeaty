import 'package:flutter/material.dart';
import 'package:yeaty/view/screens/discover.dart';
import 'package:yeaty/view/screens/my_codes_view.dart';
import 'package:yeaty/view/screens/my_wallet_view.dart';
import 'package:yeaty/view/screens/opportunity.dart';
import 'package:yeaty/view/screens/profile_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const RouteName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const List _widgetOptions = [
    //Sayfalar buraya
    DiscoverView(),
    Opportunity(),
    MyCodesView(),
    MyWallet(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(0xf14e,
                  fontFamily: 'CustomIcon', fontPackage: null),
              size: deviceSize.width * 0.06,
            ),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(0xe800,
                  fontFamily: 'CustomIcon2', fontPackage: null),
              size: deviceSize.width * 0.06,
            ),
            label: 'Fırsatlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner_rounded,
              size: deviceSize.width * 0.06,
            ),
            label: 'Kodlarım',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              size: deviceSize.width * 0.06,
            ),
            label: 'Cüzdan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              const IconData(0xe82a,
                  fontFamily: 'CustomIcon3', fontPackage: null),
              size: deviceSize.width * 0.06,
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.background,
        onTap: _onItemTapped,
      ),
    );
  }
}
