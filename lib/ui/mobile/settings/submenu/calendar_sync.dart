// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:refilc/api/providers/user_provider.dart';
import 'package:refilc/models/linked_account.dart';
import 'package:refilc/models/settings.dart';
import 'package:refilc/providers/third_party_provider.dart';
import 'package:refilc/theme/colors/colors.dart';
import 'package:refilc_kreta_api/providers/share_provider.dart';
import 'package:refilc_mobile_ui/common/dot.dart';
import 'package:refilc_mobile_ui/common/panel/panel_button.dart';
import 'package:refilc_mobile_ui/common/splitted_panel/splitted_panel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'package:refilc_mobile_ui/common/widgets/custom_segmented_control.dart';
import 'package:refilc_mobile_ui/screens/settings/settings_screen.i18n.dart';
import 'package:refilc_plus/models/premium_scopes.dart';
import 'package:refilc_plus/providers/plus_provider.dart';
import 'package:refilc_plus/ui/mobile/plus/upsell.dart';

class MenuCalendarSync extends StatelessWidget {
  const MenuCalendarSync({
    super.key,
    this.borderRadius = const BorderRadius.vertical(
        top: Radius.circular(4.0), bottom: Radius.circular(4.0)),
  });

  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CalendarSyncScreen extends StatefulWidget {
  const CalendarSyncScreen({super.key});

  @override
  CalendarSyncScreenState createState() => CalendarSyncScreenState();
}

class CalendarSyncScreenState extends State<CalendarSyncScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _hideContainersController;

  @override
  void initState() {
    super.initState();

    _hideContainersController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
