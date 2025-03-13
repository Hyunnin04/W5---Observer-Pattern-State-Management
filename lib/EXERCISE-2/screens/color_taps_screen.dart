import 'package:flutter/material.dart';
import '../models/card_type.dart';
import '../widgets/color_tap.dart';

class ColorTapsScreen extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [
          ColorTap(type: CardType.red, tapCount: redTapCount, onTap: onRedTap),
          ColorTap(type: CardType.blue, tapCount: blueTapCount, onTap: onBlueTap),
        ],
      ),
    );
  }
}
