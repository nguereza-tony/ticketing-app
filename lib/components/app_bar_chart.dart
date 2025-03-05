import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';

class AppBarChart extends StatefulWidget {
  List<AppBarChartData> data;
  AppBarChart({super.key, required this.data});

  @override
  State<AppBarChart> createState() => _AppBarChartState();
}

class _AppBarChartState extends State<AppBarChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: BarChart(
                BarChartData(
                  barTouchData: barTouchData(),
                  titlesData: tilesData(),
                  borderData: FlBorderData(show: false),
                  barGroups: barGroups(),
                  gridData: const FlGridData(show: false),
                  alignment: BarChartAlignment.spaceEvenly,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarTouchData? barTouchData() {
    return BarTouchData(
      enabled: false,
      touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (BarChartGroupData group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return null;
          }),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff939094),
      fontWeight: FontWeight.w400,
      fontSize: 10,
    );

    var index = value.toInt();

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(widget.data[index].label, style: style),
    );
  }

  FlTitlesData tilesData() {
    return FlTitlesData(
      show: true,
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 40,
          getTitlesWidget: getTitles,
        ),
      ),
      leftTitles: const AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 50,
        ),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }

  LinearGradient _barsGradient() {
    return const LinearGradient(
      colors: [
        Color(0xFF636EC1),
        Color(0xFF333E96),
      ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }

  List<BarChartGroupData> barGroups() {
    List<BarChartGroupData> barData = [];
    for (final (i, o) in widget.data.indexed) {
      barData.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: o.value,
              gradient: _barsGradient(),
              width: 20,
            ),
          ],
          showingTooltipIndicators: [0],
        ),
      );
    }

    return barData;
  }
}
