import 'package:app_designs/widgets/background.dart';
import 'package:app_designs/widgets/page_title.dart';
import 'package:flutter/material.dart';
 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Background(),
        _HomeBody()
      ],       
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle()
        ],
      ),
    );
  }
}