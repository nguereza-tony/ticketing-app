import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:provider/provider.dart';
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
            child: const SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          );
        },
      ),
    );
  }
}
