// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_log/let_log.dart';

// Project imports:
import 'package:bloc_example/blocs/music_player_bloc/music_player_page.dart';
import 'package:bloc_example/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_example/models/music_player.dart';
import 'package:bloc_example/router.gr.dart';
import 'package:bloc_example/ui/pages/home_page.dart';
import 'package:bloc_example/ui/pages/logger_page.dart';
import 'package:bloc_example/ui/pages/theme_page.dart';
import 'package:bloc_example/ui/theme/app_theme.dart';
import 'blocs/theme_bloc/index.dart';

class App extends StatelessWidget {
	final MusicPlayer musicPlayer = DummyMusicPlayer();
	final ThemeState themeState = ThemeState(themeData: appThemeData['dark']);

	Widget _buildWithTheme(BuildContext context, ThemeState state) {
		return MaterialApp(
			title: 'BLoC Example',
			// FIXME(MrHallows): Getting runtime error: [state] is null. Figure out why.
			theme: state.themeData,
			// home: HomePage(),
			builder: ExtendedNavigator.builder<AppRouter>(
				router: AppRouter(),
				initialRoute: '/',
				builder: (BuildContext context, Widget extendedNav) => Theme(
					data: state.themeData ?? appThemeData['dark'],
					child: extendedNav,
				),
				// builder: (BuildContext context, Widget extendedNav) => Theme(
				// 	data: AppTheme.active.data,
				// 	child: extendedNav,
				// ),
			),
		);
	}

	@override
	Widget build(BuildContext context) {
		return BlocProvider<ThemeBloc>(
			lazy: false,
			create: (BuildContext context) => ThemeBloc(),
			child: BlocBuilder<ThemeBloc, ThemeState>(
				builder: _buildWithTheme,
			),
		);

		// MaterialApp(
		// 	title: 'BLoC Example',
		// 	// theme: AppTheme.active.data,
		// 	// home: BlocProvider<MusicPlayerBloc>(
		// 	// 	create: (BuildContext context) => MusicPlayerBloc(musicPlayer),
		// 	// 	child: const HomePage(),
		// 	// ),

		// 	/// [builder] uses the native nav key to keep the state of
		// 	/// [ExtendedNavigator] so it won't reload when using
		// 	/// Flutter tools -> select widget mode.
		// 	builder: ExtendedNavigator.builder<AppRouter>(
		// 		router: AppRouter(),
		// 		initialRoute: '/',
		// 		builder: (BuildContext context, Widget extendedNav) => Theme(
		// 			data: AppTheme.dark.data,
		// 			child: extendedNav,
		// 		),
		// 		// builder: (BuildContext context, Widget extendedNav) => Theme(
		// 		// 	data: AppTheme.active.data,
		// 		// 	child: extendedNav,
		// 		// ),
		// 	),
		// 	// routes: <String, WidgetBuilder>{
		// 	// 	'/homePage': (BuildContext context) => const HomePage(),
		// 	// 	'/themePage': (BuildContext context) => ThemePage(),
		// 	// 	'/musicPlayerPage': (BuildContext context) => MusicPlayerPage(),
		// 	// 	'/loggerPage': (BuildContext context) => LoggerPage(),
		// 	// },
		// 	// initialRoute: '/',
		// );
	}
}
