import 'package:diseno/screens/home_screen.dart';
import 'package:diseno/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:diseno/screens/basic_design.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design'  :( _ ) => const BasicDesignScreen(),
        'scroll_screen' :( _ ) => const ScrollScreen(),
        'home_screen'   :( _ ) => const HomeScreen() 
      },
    );
  }
}