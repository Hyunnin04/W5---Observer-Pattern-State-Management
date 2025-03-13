import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_3_blabla_project/EXERCISE-2/models/card_type.dart';
import '../models/color_counters.dart';
import '../widgets/color_tap.dart';

class ColorTapsScreen extends StatelessWidget {
  const ColorTapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [
          Consumer<ColorCounters>(
            builder: (context, colorCounters, child) => Column(
              children: [
                ColorTap(
                  type: CardType.red,
                  tapCount: colorCounters.redCount,
                  onTap: colorCounters.incrementRed,
                ),
                ColorTap(
                  type: CardType.blue,
                  tapCount: colorCounters.blueCount,
                  onTap: colorCounters.incrementBlue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
