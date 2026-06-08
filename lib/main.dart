import 'package:flutter/material.dart';
import 'package:fsn_dropwatch/screens/home_screen.dart';
import 'package:fsn_dropwatch/screens/leak_history_screen.dart';
import 'package:fsn_dropwatch/screens/analytics_screen.dart';
import 'package:fsn_dropwatch/screens/devices_screen.dart';
import 'package:fsn_dropwatch/screens/settings_screen.dart';
import 'package:fsn_dropwatch/utils/constants.dart';

void main() {
  runApp(const DropWatchApp());
}

class DropWatchApp extends StatelessWidget {
  const DropWatchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSN DropWatch',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          background: AppColors.background,
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const LeakHistoryScreen(),
    const AnalyticsScreen(),
    const DevicesScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class AppColors {
  static const Color primary = Color(0xFF00D4AA);
  static const Color secondary = Color(0xFF1A1A1A);
  static const Color background = Color(0xFFF5F5F5);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF6B6B);
  static const Color info = Color(0xFF2196F3);
}