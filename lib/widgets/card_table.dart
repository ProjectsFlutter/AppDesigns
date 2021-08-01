import 'package:flutter/material.dart';
 
class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SigleCard(icon: Icons.wifi_outlined, color: Colors.blue, text: 'General'),
            _SigleCard(icon: Icons.accessibility, color: Colors.red, text: 'Transport')
          ]
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({Key? key, required this.icon, required this.color, required this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 50),
            radius: 40,
          ),
          SizedBox(height: 20.0),
          Text(this.text, style: TextStyle(fontWeight: FontWeight.bold, color: this.color, fontSize: 15.0))
        ],
      ),
    );
  }
}