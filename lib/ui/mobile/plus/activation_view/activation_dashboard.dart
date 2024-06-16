import 'package:refilc/theme/colors/colors.dart';
import 'package:refilc_plus/providers/plus_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ActivationDashboard extends StatefulWidget {
  const ActivationDashboard({super.key});

  @override
  State<ActivationDashboard> createState() => _ActivationDashboardState();
}

class _ActivationDashboardState extends State<ActivationDashboard> {
  bool manualActivationLoading = false;

  Future<void> onManualActivation() async {
    print('onManualActivation');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
