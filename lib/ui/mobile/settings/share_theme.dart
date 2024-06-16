import 'package:refilc/models/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PremiumShareTheme extends StatefulWidget {
  const PremiumShareTheme({super.key});

  @override
  State<PremiumShareTheme> createState() => _PremiumShareThemeState();
}

class _PremiumShareThemeState extends State<PremiumShareTheme>
    with TickerProviderStateMixin {
  late final SettingsProvider settingsProvider;

  @override
  void initState() {
    super.initState();
    settingsProvider = Provider.of<SettingsProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
