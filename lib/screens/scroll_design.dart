import 'package:flutter/material.dart';
 
class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        ),
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [ 
            _Page1(),
            _Page2()
          ]
        ),
      ),
    );  
  }
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton (
          onPressed: (){}, 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
          backgroundColor: Color(0xff0098FA),
          shape: StadiumBorder()
        )
        ),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
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
    final textStyle = TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.white, decoration: TextDecoration.none);
      return SafeArea(
        bottom: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Text('29°', style: textStyle),
              Text('Jueves', style: textStyle),
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