import 'package:refilc/api/providers/user_provider.dart';
import 'package:refilc/models/settings.dart';
import 'package:refilc/theme/colors/colors.dart';
import 'package:refilc_mobile_ui/common/panel/panel_button.dart';
import 'package:refilc_plus/models/premium_scopes.dart';
import 'package:refilc_plus/providers/plus_provider.dart';
import 'package:refilc_plus/ui/mobile/plus/upsell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:refilc_mobile_ui/screens/settings/settings_screen.i18n.dart';
import 'package:provider/provider.dart';
import 'package:i18n_extension/i18n_extension.dart';

// ignore: must_be_immutable
class WelcomeMessagePanelButton extends StatelessWidget {
  late SettingsProvider settingsProvider;
  late UserProvider user;

  WelcomeMessagePanelButton(this.settingsProvider, this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// ignore: must_be_immutable
class WelcomeMessageEditor extends StatefulWidget {
  late SettingsProvider settingsProvider;

  WelcomeMessageEditor(this.settingsProvider, {super.key});

  @override
  State<WelcomeMessageEditor> createState() => _WelcomeMessageEditorState();
}

class _WelcomeMessageEditorState extends State<WelcomeMessageEditor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
