import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  bool _active = true;
  int _round = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardioPulse • HIIT Timer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  const Text('ROUND 4 / 8 • WORK INTERVAL', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                  const SizedBox(height: 12),
                  const Text('00:38', style: TextStyle(fontSize: 72, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: -2)),
                  const SizedBox(height: 12),
                  const Text('Rest: 00:15 coming next', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => setState(() => _active = !_active),
                    style: ElevatedButton.styleFrom(backgroundColor: _active ? Colors.amber : AppTheme.primary, foregroundColor: Colors.black, minimumSize: const Size.fromHeight(52)),
                    child: Text(_active ? 'Pause Interval' : 'Start Timer', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => setState(() => _round++),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.card, foregroundColor: Colors.white, minimumSize: const Size(52, 52)),
                  child: const Icon(Icons.skip_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
