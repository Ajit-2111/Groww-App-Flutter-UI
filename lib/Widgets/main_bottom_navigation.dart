import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello/AppData/constants.dart';
import 'package:hello/Screens/Home.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Center(
        child: Text('F&O',
            style: TextStyle(color: ColorConstants.white, fontSize: 24))),
    Center(
        child: Text('Mutual funds',
            style: TextStyle(color: ColorConstants.white, fontSize: 24))),
    Center(
        child: Text('UPI',
            style: TextStyle(color: ColorConstants.white, fontSize: 24))),
    Center(
        child: Text('Loans',
            style: TextStyle(color: ColorConstants.white, fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: ColorConstants.background,
          border: Border(
            top: BorderSide(
              color: ColorConstants.selectedGray,
              width: 1,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstants.background,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: ColorConstants.selectedNav,
          unselectedItemColor: Colors.grey[700],
          selectedFontSize: 10,
          unselectedFontSize: 10,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart_sharp,
                size: 26,
              ),

              // activeIcon: Icon(Icons.show_chart_sharp),
              label: 'Stocks',
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset(
              //   'assets/icons/fno_icon.svg',
              //   // width: 24,
              //   height: 24,
              // ),
              icon: Icon(
                Icons.wallet,
                size: 26,
              ),
              label: 'F&O',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline,
                size: 26,
              ),
              label: 'Mutual Funds',
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset(
              //   'assets/icons/upi_icon.svg',
              //   // width: 24,
              //   height: 24,
              // ),
              icon: Icon(
                Icons.arrow_right_sharp,
                size: 26,
              ),
              label: 'UPI',
            ),
            BottomNavigationBarItem(
              // icon: SvgPicture.asset(
              //   'assets/icons/loans_icon.svg',
              //   // width: 24,
              //   height: 24,
              // ),

              icon: Icon(
                Icons.money,
                size: 26,
              ),
              label: 'Loans',
            ),
          ],
        ),
      ),
    );
  }
}
