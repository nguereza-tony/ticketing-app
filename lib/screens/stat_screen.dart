import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ticketing/components/app_bar_chart.dart';
import 'package:ticketing/components/app_pie_chart.dart';
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/providers/user_provider.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({super.key});

  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _handleRefresh() async {}

  @override
  Scaffold build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.statistic, backButton: false),
      body: Consumer<UserProvider>(
        builder: (context, transactionProvider, child) {
          if (transactionProvider.user == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return RefreshIndicator(
            onRefresh: _handleRefresh,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyLabel(
                    text: t.labels.stats,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: const [],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.stats,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: const [],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.stats,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: const [],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.stats,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppBarChart(
                    data: const [],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.stats,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppBarChart(
                    data: const [],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
