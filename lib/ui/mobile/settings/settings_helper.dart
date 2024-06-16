import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:provider/provider.dart';
import 'package:refilc/api/providers/database_provider.dart';
import 'package:refilc/api/providers/user_provider.dart';
import 'package:refilc/models/settings.dart';
import 'package:refilc/ui/widgets/grade/grade_tile.dart';
import 'package:refilc_kreta_api/models/grade.dart';

class GradeRarityTextSetting extends StatefulWidget {
  const GradeRarityTextSetting({
    super.key,
    required this.title,
    required this.cancel,
    required this.done,
    required this.defaultRarities,
  });

  final String title;
  final String cancel;
  final String done;
  final List<String> defaultRarities;

  @override
  GradeRarityTextSettingState createState() => GradeRarityTextSettingState();
}

class GradeRarityTextSettingState extends State<GradeRarityTextSetting> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void showRenameDialog(
      {required String title,
      required String cancel,
      required String done,
      required Map<String, String> rarities,
      required String gradeIndex,
      required List<String> defaultRarities,
      required}) {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(builder: (context, setS) {
        return Container();
      }),
    );
  }
}
