import 'package:flutter/material.dart';

class TopHomeIconsWigets extends StatelessWidget {
  final String image, name;

  const TopHomeIconsWigets({Key key,  this.image,  this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 35, width: 35),
        SizedBox(height: 3),
        Text(name, style: TextStyle(color: Colors.indigoAccent, fontSize: 18)),
      ],
    );
  }
}
