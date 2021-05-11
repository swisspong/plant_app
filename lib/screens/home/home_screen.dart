import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/components/my_buttom_nav_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/constants.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body:Body(),
      bottomNavigationBar: MyButtomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading:IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed:(){}
      )
    );
  }
}

