import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar:BottomNavigationBar(
        onTap: (index){


        },
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/home_icon.png")),label: "HOME"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/search_icon.png")),label: "SEARCH"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/browes_icon.png")),label: "BROWES"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/watchlist_icon.png")),label: "WATCHLIST"),

        ],
      ) ,


    );
  }
}
