// import 'package:flutter/material.dart';
// import 'package:animationapp/presentation/blocs/theme/theme_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wiredash/wiredash.dart';

// import 'themes/theme_color.dart';

// class WiredashApp extends StatelessWidget {
//   final navigatorKey;
//   final Widget child;
//   final String languageCode;

//   const WiredashApp({
//     Key? key,
//     required this.navigatorKey,
//     required this.child,
//     required this.languageCode,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final bool isDarkTheme = context.read<ThemeCubit>().state == Themes.dark;
//     return Wiredash(
//       projectId: 'movie-app-tutorial-k1xtma1',
//       secret: 'wsmigg476q5l4k9mz2njmob4puuuwt58',
//       navigatorKey: navigatorKey,
//       child: child,
//       options: WiredashOptionsData(
//         locale: Locale.fromSubtags(
//           languageCode: languageCode,
//         ),
//       ),
//       theme: WiredashThemeData(
//         brightness: isDarkTheme ? Brightness.dark : Brightness.light,
//         primaryColor: AppColor.royalBlue,
//         secondaryColor: AppColor.violet,
//         secondaryBackgroundColor: isDarkTheme ? AppColor.vulcan : Colors.white,
//         brightness: isDarkTheme ? AppColor.vulcan : Colors.white,
//         primaryColor: isDarkTheme ? Colors.white : AppColor.vulcan,
//         secondaryColor: isDarkTheme ? Colors.white : AppColor.vulcan,
//         tertiaryTextColor: isDarkTheme ? Colors.white : AppColor.vulcan,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:animationapp/presentation/blocs/theme/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wiredash/wiredash.dart';

import 'themes/theme_color.dart';

class WiredashApp extends StatelessWidget {
  final navigatorKey;
  final Widget child;
  final String languageCode;

  const WiredashApp({
    super.key,
    required this.navigatorKey,
    required this.child,
    required this.languageCode,
  });

  // @override
  @override
  Widget build(BuildContext context) {
    final bool isDarkTheme = context.read<ThemeCubit>().state == Themes.dark;

    Color primaryColor = isDarkTheme ? AppColor.royalBlue : Colors.blue;
    Color accentColor = AppColor.violet;
    Color backgroundColor = isDarkTheme ? AppColor.vulcan : Colors.white;
    Color cardColor = isDarkTheme ? AppColor.vulcan : Colors.white;
    Color errorColor = Colors.red;

    return Wiredash(
      projectId: 'movie-app-tutorial-k1xtma1',
      secret: 'wsmigg476q5l4k9mz2njmob4puuuwt58',
      navigatorKey: navigatorKey,
      child: child,
      options: WiredashOptionsData(
        locale: Locale.fromSubtags(
          languageCode: languageCode,
        ),
      ),
      theme: WiredashThemeData(
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        primaryColor: primaryColor,
        secondPenColor: accentColor,
        appBackgroundColor: backgroundColor,
        errorColor: cardColor,
        thirdPenColor: errorColor,
      ),
    );
  }
}
