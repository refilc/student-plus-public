import 'package:animations/animations.dart';
import 'package:refilc/theme/colors/colors.dart';
import 'package:refilc_plus/providers/plus_provider.dart';
import 'package:refilc_plus/ui/mobile/plus/activation_view/activation_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:refilc_plus/ui/mobile/plus/plus_things.i18n.dart';

class PremiumActivationView extends StatefulWidget {
  const PremiumActivationView({super.key, required this.product});

  final String product;

  @override
  State<PremiumActivationView> createState() => _PremiumActivationViewState();
}

class _PremiumActivationViewState extends State<PremiumActivationView>
    with SingleTickerProviderStateMixin {
  bool activated = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
