import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
          _SigleCard(icon: Icons.wifi_outlined, color: Colors.blue, text: 'Wifi'),
          _SigleCard(icon: Icons.accessibility, color: Colors.red, text: 'Accessibility')
          ]
        ),
        TableRow(
          children: [
          _SigleCard(icon: Icons.apps_outlined, color: Colors.cyan, text: 'Apps'),
          _SigleCard(icon: Icons.laptop, color: Colors.orange, text: 'Laptop')
          ]
        ),
        TableRow(
          children: [
          _SigleCard(icon: Icons.android, color: Colors.green, text: 'Android'),
          _SigleCard(icon: Icons.phone_iphone_sharp, color: Colors.grey, text: 'Iphone')
          ]
        ),       
        TableRow(
          children: [
          _SigleCard(icon: Icons.carpenter, color: Colors.brown, text: 'Carpenter'),
          _SigleCard(icon: Icons.security, color: Colors.deepOrange, text: 'Security')
          ]
        )
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon, size: 50, color: Colors.white),
          radius: 40,
        ),
        SizedBox(height: 20.0),
        Text(this.text,
            style: TextStyle(
            fontWeight: FontWeight.bold, color: this.color, fontSize: 15.0
            )
        )
      ],
    );
    return _CardBackgroud(child: column);
  }
}

class _CardBackgroud extends StatelessWidget {
  final Widget child;
  const _CardBackgroud({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)
           ),
           child: this.child,
          ),
        ),
      ),
    );
  }
}
