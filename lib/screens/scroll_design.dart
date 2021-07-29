import 'package:flutter/material.dart';
 
class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        _MainContend()
      ],
    );  
  }
}

class _MainContend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.white);
        return SafeArea(
          bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Text('10°', style: textStyle),
              Text('Miercoles', style: textStyle),
              Expanded(child: Container()),
              Icon(Icons.keyboard_arrow_down, size:100, color: Colors.white)
      ]
    ),
        );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}