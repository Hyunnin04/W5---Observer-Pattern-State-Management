import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/color_counters.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Center(
        child: Consumer<ColorCounters>(
          builder: (context, colorCounters, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Red Taps: ${colorCounters.redCount}',
                  style: TextStyle(fontSize: 24)),
              Text('Blue Taps: ${colorCounters.blueCount}',
                  style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
