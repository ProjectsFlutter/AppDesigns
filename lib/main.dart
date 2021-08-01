import 'package:app_designs/screens/basic-design.dart';
import 'package:app_designs/screens/home-screen.dart';
import 'package:app_designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'basic_design' :(_)=> BasicDesignScreen(),
        'scroll_design':(_)=> ScrollScreen(),
        'home_design'  :(_)=> HomeScreen()
      },
    );
  }
}
