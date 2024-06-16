import 'package:refilc/models/settings.dart';
import 'package:refilc/theme/colors/colors.dart';
import 'package:refilc_mobile_ui/common/panel/panel.dart';
// import 'package:refilc_mobile_ui/common/panel/panel_button.dart';
import 'package:refilc_plus/helpers/app_icon_helper.dart';
// import 'package:refilc_plus/models/premium_scopes.dart';
// import 'package:refilc_plus/providers/plus_provider.dart';
// import 'package:refilc_plus/ui/mobile/plus/upsell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'app_icon_screen.i18n.dart';

class PremiumCustomAppIconMenu extends StatelessWidget {
  const PremiumCustomAppIconMenu({super.key, required this.settings});

  final SettingsProvider settings;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 0,
      height: 0,
    );
  }
}

class ModifyAppIcon extends StatefulWidget {
  const ModifyAppIcon({super.key});

  @override
  State<ModifyAppIcon> createState() => _ModifyAppIconState();
}

class _ModifyAppIconState extends State<ModifyAppIcon> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AppIconItem extends StatelessWidget {
  const AppIconItem({
    super.key,
    required this.iconName,
    required this.iconPath,
    required this.displayName,
    this.description,
    required this.selected,
    required this.selectCallback,
  });

  final String iconName;
  final String iconPath;
  final String displayName;
  final String? description;
  final bool selected;
  final void Function() selectCallback;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
