// Package imports:
import 'package:auto_route/auto_route_annotations.dart';

// Project imports:
import 'package:bloc_example/blocs/music_player_bloc/music_player_page.dart';
import 'package:bloc_example/ui/pages/index.dart';
import 'package:bloc_example/ui/pages/settings_page.dart';

/// Creates an [@AdaptiveAutoRouter] for app navigation.
///
/// {@tool snippet}
///
/// Run the generator:
///
/// Use the `watch` flag to watch the files' system for edits and rebuild as
/// necessary:
/// ```console
/// flutter packages pub run build_runner watch
/// ```
///
/// If you want the generator to run one time and exit use:
/// ```console
/// flutter packages pub run build_runner build --delete-conflicting-outputs
/// ```
/// (^ This is preferred most often, as it will not occupy the terminal while
///  watching for changes when none are being made.)
///
/// {@end-tool}
@AdaptiveAutoRouter(
	generateNavigationHelperExtension: true,
	routes: <AutoRoute<dynamic>>[
		// AdaptiveRoute<dynamic>(page: SplashScreen, initial: true),
		AdaptiveRoute<dynamic>(page: HomePage, initial: true),
		AdaptiveRoute<dynamic>(page: SettingsPage),
		AdaptiveRoute<dynamic>(page: ThemePage),
		AdaptiveRoute<dynamic>(page: MusicPlayerPage),
		AdaptiveRoute<dynamic>(page: LoggerPage),
		// AdaptiveRoute<dynamic>(page: ),
	],
)
class $AppRouter {}
