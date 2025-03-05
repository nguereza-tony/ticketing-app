import 'package:flutter/material.dart';
import 'package:personal_budget/components/app_bar_chart.dart';
import 'package:personal_budget/components/app_pie_chart.dart';
import 'package:personal_budget/helpers/app_helper.dart';
import 'package:personal_budget/i18n/translations.g.dart';
import 'package:personal_budget/models/stat_model.dart';
import 'package:personal_budget/providers/transaction_provider.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:provider/provider.dart';

class StatScreen extends StatefulWidget {
  const StatScreen({super.key});

  @override
  State<StatScreen> createState() => _StatScreenState();
}

class _StatScreenState extends State<StatScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<TransactionProvider>(context, listen: false).getStatistics();
  }

  Future<void> _handleRefresh() async {
    Provider.of<TransactionProvider>(context, listen: false).getStatistics();
  }

  @override
  Scaffold build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: getAppHeader(title: t.titles.statistic, backButton: false),
      body: Consumer<TransactionProvider>(
        builder: (context, transactionProvider, child) {
          if (transactionProvider.statistics == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          var statistics = transactionProvider.statistics;

          // Transaction amount per types
          var trxAmountPerTypesChart = _getTransactionAmountPerTypesChart(
            statistics!.transactionAmountPerTypes,
          );

          // Amount per tags
          var expenseAmountPerTagsChart = _getAmountPerTagsChart(
            statistics.expenseAmountPerTags,
          );
          var incomeAmountPerTagsChart = _getAmountPerTagsChart(
            statistics.incomeAmountPerTags,
          );

          // Last monthly amount
          var lastMonthlyExpenseAmountChart = _getLastMonthlyAmountChart(
            statistics.lastExpenseMonthlyAmounts,
          );
          var lastMonthlyIncomeAmountChart = _getLastMonthlyAmountChart(
            statistics.lastIncomeMonthlyAmounts,
          );

          return RefreshIndicator(
            onRefresh: _handleRefresh,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreyLabel(
                    text: t.labels.transactionAmountPerTypes,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: trxAmountPerTypesChart,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.expenseAmountPerTags,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: expenseAmountPerTagsChart,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.incomeAmountPerTags,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppPieChart(
                    valueAsTitle: false,
                    data: incomeAmountPerTagsChart,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.lastExpenseMonthlyAmounts,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppBarChart(
                    data: lastMonthlyExpenseAmountChart,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GreyLabel(
                    text: t.labels.lastIncomeMonthlyAmounts,
                    color: Colors.black,
                    weight: FontWeight.w700,
                    size: 16,
                  ),
                  AppBarChart(
                    data: lastMonthlyIncomeAmountChart,
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

  /// return chart for "transaction amount per types"
  List<AppPieChartData> _getTransactionAmountPerTypesChart(
    List<TransactionAmountType> data,
  ) {
    final colors = ['#ffee34', '#783653', '#eeffaa'];
    final transactionTypes = getTransactionTypeList();

    List<AppPieChartData> items = [];
    for (final (i, o) in data.indexed) {
      items.add(
        AppPieChartData(
          value: o.amount,
          label: transactionTypes[o.type] ?? '',
          color: colors[i],
        ),
      );
    }
    return items;
  }

  /// return chart for "expense/income amount per tags"
  List<AppPieChartData> _getAmountPerTagsChart(
    List<AmountPerTag> data,
  ) {
    List<AppPieChartData> items = [];
    for (final o in data) {
      items.add(
        AppPieChartData(
          value: o.amount,
          label: o.tag.name,
          color: o.tag.color,
        ),
      );
    }
    return items;
  }

  /// return chart for "last monthly expense/income amounts"
  List<AppBarChartData> _getLastMonthlyAmountChart(
    List<MonthlyAmount> data,
  ) {
    List<AppBarChartData> items = [];
    for (final o in data) {
      items.add(
        AppBarChartData(
          value: o.amount,
          label: o.month,
        ),
      );
    }
    return items;
  }
}
