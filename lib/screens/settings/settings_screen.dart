import 'package:florid/screens/settings/user_screen.dart';
import 'package:flutter/widgets.dart';

/// Backward-compatible wrapper after merging settings into [UserScreen].
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => const UserScreen();
}
