import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HIIT Protocols', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text('Tabata Sprints (20s / 10s)', style: TextStyle(color: Colors.white)), subtitle: Text('4 Minutes • High Intensity', style: TextStyle(color: AppTheme.textSecondary))),
          ListTile(title: Text('EMOM 10 Minutes', style: TextStyle(color: Colors.white)), subtitle: Text('Every Minute on the Minute', style: TextStyle(color: AppTheme.textSecondary))),
        ],
      ),
    );
  }
}
