import 'package:app_designs/screens/basic-design.dart';
import 'package:app_designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_design',
      routes: {
        'basic_design':(_)=> BasicDesignScreen(),
        'scroll_design':(_)=> ScrollScreen()
      },
    );
  }
}
