import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:animationapp/common/constants/languages.dart';
import 'package:animationapp/presentation/app_localizations.dart';

materialWrapperWithBlocs(
  Widget child,
  List<BlocProvider> blocProviders,
  NavigatorObserver observer,
) {
  return MultiBlocProvider(
    providers: blocProviders,
    child: MaterialApp(
      locale: Locale(Languages.languages[0].code),
      supportedLocales: Languages.languages.map((e) => Locale(e.code)).toList(),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: child,
      navigatorObservers: [observer],
    ),
  );
}
