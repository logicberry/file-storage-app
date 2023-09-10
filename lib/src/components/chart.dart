import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';

class FileChart extends StatefulWidget {
  const FileChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.green,
            value: 20,
            showTitle: false,
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.blue,
            value: 40,
            showTitle: false,
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.primaryColor,
            value: 30,
            showTitle: false,
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.yellow,
            value: 15,
            showTitle: false,
            // title: '15%',
            radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: AppColors.red,
            //   shadows: shadows,
            // ),
          );
        default:
          throw Error();
      }
    });
  }
}
