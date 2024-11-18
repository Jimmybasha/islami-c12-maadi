import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c12_maadi/quran_details/quran_details_screen.dart';
import 'package:islami_c12_maadi/style/AppStyle.dart';

import 'ahadeth_details/ahadeth_details_screen.dart';
import 'package:islami_c12_maadi/home/home_screen.dart';

void main() {
  // hello world
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme,
      darkTheme:AppStyle.darkTheme ,
      themeMode: ThemeMode.dark,
      initialRoute: Homescreen.routeName,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale("ar"),
      routes: {
        Homescreen.routeName:(_)=>Homescreen(),
        QuranDetailsScreen.routeName :(_)=> QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen()
      },
    );
  }
}
