// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:bloc_example/blocs/music_player_bloc/music_player_page.dart';
import 'package:bloc_example/ui/pages/index.dart';
import 'package:bloc_example/ui/pages/settings_page.dart';

class Routes {
  static const String homePage = '/';
  static const String settingsPage = '/settings-page';
  static const String themePage = '/theme-page';
  static const String musicPlayerPage = '/music-player-page';
  static const String loggerPage = '/logger-page';
  static const Set<String> all = <String>{
    homePage,
    settingsPage,
    themePage,
    musicPlayerPage,
    loggerPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final List<RouteDef> _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.themePage, page: ThemePage),
    RouteDef(Routes.musicPlayerPage, page: MusicPlayerPage),
    RouteDef(Routes.loggerPage, page: LoggerPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final Map _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (BuildContext context) => const HomePage(),
        settings: data,
      );
    },
    SettingsPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (BuildContext context) => SettingsPage(),
        settings: data,
      );
    },
    ThemePage: (RouteData data) {
      final ThemePageArguments args = data.getArgs<ThemePageArguments>(
        orElse: () => ThemePageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (BuildContext context) => ThemePage(
          key: args.key,
          isDarkThemeEnabled: args.isDarkThemeEnabled,
        ),
        settings: data,
      );
    },
    MusicPlayerPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (BuildContext context) => MusicPlayerPage(),
        settings: data,
      );
    },
    LoggerPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (BuildContext context) => LoggerPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushSettingsPage() => push<dynamic>(Routes.settingsPage);

  Future<dynamic> pushThemePage({
    Key key,
    bool isDarkThemeEnabled = false,
  }) =>
      push<dynamic>(
        Routes.themePage,
        arguments: ThemePageArguments(
            key: key, isDarkThemeEnabled: isDarkThemeEnabled),
      );

  Future<dynamic> pushMusicPlayerPage() =>
      push<dynamic>(Routes.musicPlayerPage);

  Future<dynamic> pushLoggerPage() => push<dynamic>(Routes.loggerPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ThemePage arguments holder class
class ThemePageArguments {
  ThemePageArguments({this.key, this.isDarkThemeEnabled = false});
  final Key key;
  final bool isDarkThemeEnabled;
}
