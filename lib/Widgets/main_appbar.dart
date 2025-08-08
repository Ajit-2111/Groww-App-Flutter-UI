import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello/AppData/constants.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String sTitle;

  const MainAppbar({Key? key, required this.sTitle}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0, 
      surfaceTintColor: Colors.transparent, 
      leading: Container(
        padding: EdgeInsets.all(3.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xffffb56b),
              Color(0xfff39060),
              Color(0xffe16b5c),
              Color(0xffca485c),
            ],
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            tileMode: TileMode.mirror,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstants.background,
          ),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      title: Text(
        sTitle,
        style: TextStyle(
          color: ColorConstants.white,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.search,
            color: ColorConstants.white,
          ),
          tooltip: 'Search',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.qr_code,
            color: ColorConstants.white,
          ),
          tooltip: 'UPI',
          onPressed: () {},
        ),
        IconButton(
          onPressed: () {},
          tooltip: "Profile",
          icon: CircleAvatar(
            backgroundColor: ColorConstants.profileColor,
            child: Text("Z", style: TextStyle(color: ColorConstants.white)),
          ),
        ),
      ],
    );
  }
}
