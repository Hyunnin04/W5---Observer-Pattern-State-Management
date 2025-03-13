import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Red Taps: $redTapCount', style: TextStyle(fontSize: 24)),
            Text('Blue Taps: $blueTapCount', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
