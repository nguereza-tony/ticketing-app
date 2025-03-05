import 'package:flutter/material.dart';
import 'package:platine_flutter/platine_flutter.dart';
import 'package:platine_flutter/platine_i18n.dart' as platine_i18n;
import 'package:ticketing/i18n/translations.g.dart';
import 'package:ticketing/screens/home_screen.dart';
import 'package:ticketing/screens/stat_screen.dart';
import 'package:ticketing/screens/user/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgets = [
    const HomeScreen(),
    const StatScreen(),
    const Text('Transactions'),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Scaffold build(BuildContext context) {
    final t = Translations.of(context);
    final pft = platine_i18n.Translations.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: _widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: pft.titles.dashboard,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bar_chart_outlined),
            label: t.labels.stats,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.schedule_outlined),
            label: t.titles.statistic,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            label: pft.titles.userProfile,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF333E96),
        unselectedItemColor: const Color(0xFF1A1A1A),
        onTap: _onItemSelected,
      ),
    );
  }
}
