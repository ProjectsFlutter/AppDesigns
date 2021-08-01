import 'package:app_designs/widgets/background.dart';
import 'package:app_designs/widgets/bottom_navigation.dart';
import 'package:app_designs/widgets/card_table.dart';
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
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}