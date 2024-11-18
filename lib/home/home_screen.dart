import 'package:flutter/material.dart';
import 'package:islami_c12_maadi/home/tabs/AhadethTab.dart';
import 'package:islami_c12_maadi/home/tabs/QuranTab.dart';
import 'package:islami_c12_maadi/home/tabs/RadioTab.dart';
import 'package:islami_c12_maadi/home/tabs/SebhaTab.dart';
import 'package:islami_c12_maadi/home/tabs/SettingsTab.dart';


class Homescreen extends StatefulWidget {

  static const routeName="home";



  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex=0;
  List<Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),

  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/default_bg.png"
              ),
              fit:BoxFit.fill
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:AppBar(
          title:  Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index)=>{
              setState(() {
                currentIndex=index;
              })
            },
            type:BottomNavigationBarType.shifting ,
            currentIndex: currentIndex,
            items:[
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon:  ImageIcon(
                    AssetImage("assets/images/icon_quran.png",)
                ),
                label: "quran",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,

                icon:  const ImageIcon(
                    AssetImage("assets/images/ahadeth_icon.png")
                ),
                label: "ahadeth",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(
                    AssetImage("assets/images/sebha_icon.png")
                ),
                label: "tasbeeh",
              ),
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  ImageIcon(
                    AssetImage("assets/images/radio_icon.png")
                ),
                label:"radio",
              ) ,
              BottomNavigationBarItem(
                backgroundColor:Theme.of(context).colorScheme.primary,
                icon: const  Icon(
                    Icons.settings
                ),
                label: "settings",
              ),

            ]

        ),

        body:tabs[currentIndex],










      ),
    );
  }
}
