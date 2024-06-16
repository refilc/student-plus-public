import 'package:flutter_svg/svg.dart';
import 'package:refilc_mobile_ui/common/bottom_sheet_menu/rounded_bottom_sheet.dart';
import 'package:refilc_mobile_ui/plus/plus_screen.dart';
import 'package:flutter/material.dart';
import 'plus_things.i18n.dart';

enum PremiumFeature {
  // old things
  gradestats,
  customcolors,
  profile,
  iconpack,
  subjectrename,
  weeklytimetable,
  widget,
  // new things
  moreAccounts, // cap, (ink, sponge)
  betaReleases, // cap
  welcomeMessage, // cap
  selfNotes, // cap
  gradeCalculation, // ink
  liveActivity, // ink
  timetableNotes, // ink
  iconChange, // sponge
  fontChange, // sponge
  goalPlanner, // sponge
  gradeRarities,
  calendarSync,
  gradeExporting, // basic
}

enum PremiumFeatureLevel {
  old,
  cap,
  ink,
  sponge,
  // new new new
  basic,
  gold,
}

const Map<PremiumFeature, PremiumFeatureLevel> _featureLevels = {
  // old things
  PremiumFeature.gradestats: PremiumFeatureLevel.old,
  PremiumFeature.customcolors: PremiumFeatureLevel.old,
  PremiumFeature.profile: PremiumFeatureLevel.old,
  PremiumFeature.iconpack: PremiumFeatureLevel.old,
  PremiumFeature.subjectrename: PremiumFeatureLevel.old,
  PremiumFeature.weeklytimetable: PremiumFeatureLevel.old,
  PremiumFeature.widget: PremiumFeatureLevel.old,
  // new things
  PremiumFeature.moreAccounts: PremiumFeatureLevel.basic,
  PremiumFeature.betaReleases: PremiumFeatureLevel.basic,
  PremiumFeature.welcomeMessage: PremiumFeatureLevel.basic,
  PremiumFeature.selfNotes: PremiumFeatureLevel.basic,
  PremiumFeature.gradeCalculation: PremiumFeatureLevel.basic,
  PremiumFeature.liveActivity: PremiumFeatureLevel.gold,
  PremiumFeature.timetableNotes: PremiumFeatureLevel.gold,
  PremiumFeature.iconChange: PremiumFeatureLevel.gold,
  PremiumFeature.fontChange: PremiumFeatureLevel.gold,
  PremiumFeature.goalPlanner: PremiumFeatureLevel.gold,
  PremiumFeature.gradeRarities: PremiumFeatureLevel.basic,
  PremiumFeature.calendarSync: PremiumFeatureLevel.gold,
  PremiumFeature.gradeExporting: PremiumFeatureLevel.basic,
};

// const Map<PremiumFeature, String> _featureAssets = {
//   // old
//   PremiumFeature.gradestats: "assets/images/premium_stats_showcase.png",
//   PremiumFeature.customcolors: "assets/images/premium_theme_showcase.png",
//   PremiumFeature.profile: "assets/images/premium_nickname_showcase.png",
//   PremiumFeature.weeklytimetable:
//       "assets/images/premium_timetable_showcase.png",
//   // PremiumFeature.goalplanner: "assets/images/premium_goal_showcase.png",
//   PremiumFeature.widget: "assets/images/premium_widget_showcase.png",
//   // new
//   PremiumFeature.moreAccounts: "assets/images/premium_banner/more_accounts.png",
//   PremiumFeature.betaReleases: "assets/images/premium_banner/beta_releases.png",
//   PremiumFeature.welcomeMessage:
//       "assets/images/premium_banner/welcome_message.png",
//   PremiumFeature.selfNotes: "assets/images/premium_banner/self_notes.png",
//   PremiumFeature.gradeCalculation:
//       "assets/images/premium_banner/grade_calc.png",
//   PremiumFeature.liveActivity: "assets/images/premium_banner/live_activity.png",
//   PremiumFeature.timetableNotes:
//       "assets/images/premium_banner/timetable_notes.png",
//   PremiumFeature.iconChange: "assets/images/premium_banner/app_icon.png",
//   PremiumFeature.fontChange: "assets/images/premium_banner/font.png",
//   PremiumFeature.goalPlanner: "assets/images/premium_banner/goal_planner.png",

//   PremiumFeature.gradeRarities:
//       "assets/images/premium_banner/grade_rarities.png",
//   PremiumFeature.calendarSync: "assets/images/premium_banner/calendar_sync.png",
// };

const Map<PremiumFeature, String> _featureTitles = {
  // old shit
  PremiumFeature.gradestats: "Találtál egy prémium funkciót.",
  PremiumFeature.customcolors: "Több személyre szabás kell?",
  PremiumFeature.profile: "Nem tetszik a neved?",
  PremiumFeature.iconpack: "Jobban tetszettek a régi ikonok?",
  PremiumFeature.subjectrename:
      "Sokáig tart elolvasni, hogy \"Földrajz természettudomány\"?",
  PremiumFeature.weeklytimetable: "Szeretnéd egyszerre az egész hetet látni?",
  // PremiumFeature.goalplanner: "Kövesd a céljaidat, sok-sok statisztikával.",
  PremiumFeature.widget: "Órák a kezdőképernyőd kényelméből.",
  // new shit
  PremiumFeature.moreAccounts: "u_title_1",
  PremiumFeature.betaReleases: "u_title_2",
  PremiumFeature.welcomeMessage: "u_title_3",
  PremiumFeature.selfNotes: "u_title_4",
  PremiumFeature.gradeCalculation: "u_title_5",
  PremiumFeature.liveActivity: "u_title_6",
  PremiumFeature.timetableNotes: "u_title_7",
  PremiumFeature.iconChange: "u_title_8",
  PremiumFeature.fontChange: "u_title_9",
  PremiumFeature.goalPlanner: "u_title_10",
  PremiumFeature.gradeRarities: "u_title_11",
  PremiumFeature.calendarSync: "u_title_12",
  PremiumFeature.gradeExporting: "u_title_13",
};

const Map<PremiumFeature, String> _featureDescriptions = {
  // old
  PremiumFeature.gradestats:
      "Támogass Kupak szinten, hogy több statisztikát láthass. ",
  PremiumFeature.customcolors:
      "Támogass Kupak szinten, és szabd személyre az elemek, a háttér, és a panelek színeit.",
  PremiumFeature.profile:
      "Kupak szinten változtathatod a nevedet, sőt, akár a profilképedet is.",
  PremiumFeature.iconpack:
      "Támogass Kupak szinten, hogy ikon témát választhass.",
  PremiumFeature.subjectrename:
      "Támogass Kupak szinten, hogy átnevezhesd Föcire.",
  PremiumFeature.weeklytimetable:
      "Támogass Tinta szinten a heti órarend funkcióért.",
  // PremiumFeature.goalplanner: "A célkövetéshez támogass Tinta szinten.",
  PremiumFeature.widget:
      "Támogass Tinta szinten, és helyezz egy widgetet a kezdőképernyődre.",
  // new
  PremiumFeature.moreAccounts: "u_desc_1",
  PremiumFeature.betaReleases: "u_desc_2",
  PremiumFeature.welcomeMessage: "u_desc_3",
  PremiumFeature.selfNotes: "u_desc_4",
  PremiumFeature.gradeCalculation: "u_desc_5",
  PremiumFeature.liveActivity: "u_desc_6",
  PremiumFeature.timetableNotes: "u_desc_7",
  PremiumFeature.iconChange: "u_desc_8",
  PremiumFeature.fontChange: "u_desc_9",
  PremiumFeature.goalPlanner: "u_desc_10",
  PremiumFeature.gradeRarities: "u_desc_11",
  PremiumFeature.calendarSync: "u_desc_12",
  PremiumFeature.gradeExporting: "u_desc_13",
};

class PlusLockedFeaturePopup extends StatelessWidget {
  const PlusLockedFeaturePopup({super.key, required this.feature});

  static void show({
    required BuildContext context,
    required PremiumFeature feature,
  }) =>
      showRoundedModalBottomSheet(
        context,
        child: PlusLockedFeaturePopup(
          feature: feature,
        ),
        showHandle: false,
      );

  final PremiumFeature feature;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
