import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Rate Zones', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
          child: const Text('Time spent in Peak Zone (Zone 5): 14 mins. Calories burned: 412 kcal.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
