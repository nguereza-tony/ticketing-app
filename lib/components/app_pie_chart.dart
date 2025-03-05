import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:platine_flutter/platine_flutter.dart';

class AppPieChart extends StatefulWidget {
  bool valueAsTitle;
  List<AppPieChartData> data;
  AppPieChart({
    super.key,
    this.valueAsTitle = false,
    required this.data,
  });

  @override
  State<AppPieChart> createState() => _AppPieChartState();
}

class _AppPieChartState extends State<AppPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: [
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent e, PieTouchResponse? r) {
                      setState(() {
                        if (!e.isInterestedForInteractions ||
                            r == null ||
                            r.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = r.touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: getChartSectionsData(),
                ),
              ),
            ),
          ),
          _getIndicators(),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> getChartSectionsData() {
    List<PieChartSectionData> pieData = [];
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
    var total = _getTotalValue();
    for (final (i, o) in widget.data.indexed) {
      var percent = (o.value * 100 / total).toInt();
      var isTouched = i == touchedIndex;
      var fontSize = isTouched ? 25.0 : 16.0;
      var radius = isTouched ? 60.0 : 50.0;

      pieData.add(
        PieChartSectionData(
          color: HexColor(o.color),
          value: o.value,
          title: widget.valueAsTitle ? o.value.toString() : '$percent%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        ),
      );
    }

    return pieData;
  }

  /// Return the pie chart indicators
  Widget _getIndicators() {
    List<Indicator> items = [];

    for (final o in widget.data) {
      items.add(
        Indicator(
          color: HexColor(o.color),
          text: o.label,
          isSquare: true,
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var i in items) ...[i],
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  /// Return total value of pie chart data in order to calculate
  /// percentage of each section
  double _getTotalValue() {
    double total = 0;
    for (var i in widget.data) {
      total += i.value;
    }

    return total;
  }
}
