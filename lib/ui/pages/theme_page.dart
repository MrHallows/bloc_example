// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:ionicons/ionicons.dart';

// Project imports:
import 'package:bloc_example/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_example/ui/pages/home_page.dart';
import 'package:bloc_example/ui/theme/colors.dart';
import 'package:bloc_example/ui/widgets/custom_appbar.dart';

class ThemePage extends StatelessWidget {
	ThemePage({
		Key key,
		this.isDarkThemeEnabled = false,
	}) : super(key: key);

	final bool isDarkThemeEnabled;
	final ThemeBloc themeBloc = ThemeBloc();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: CustomAppBar(
				title: 'Theme',
				actions: <Widget>[
					IconButton(
						icon: const Icon(
							Ionicons.sunny_outline,
						),
						tooltip: 'Select Theme',
						onPressed: () {
							// Navigator.of(context).pushReplacement(
							// 	MaterialPageRoute<HomePage>(
							// 		builder: (BuildContext context) => const HomePage(),
							// 	),
							// );
							showModalBottomSheet<void>(
								context: context,
								builder: (BuildContext context) {
									return Container(
										height: 200.0,
										color: AppColors.surface,
										child: Center(
											child: Column(
												mainAxisAlignment: MainAxisAlignment.center,
												mainAxisSize: MainAxisSize.min,
												children: <Widget>[
													const Text('Modal BottomSheet'),
													OutlinedButton(
														onPressed: () => ExtendedNavigator.of(context).pop(),
														child: const Text('Dark Theme'),
													),
													OutlinedButton(
														onPressed: () => ExtendedNavigator.of(context).pop(),
														child: const Text('Light Theme'),
													),
													// ListView(
													// 	children: <Widget>[
													// 		ListTile(
													// 			title: const Text('Dark Theme'),
													// 			onTap: () {
													// 				// TODO(MrHallows): Implement switch to dark theme.
													// 				ExtendedNavigator.of(context).pop();
													// 			},
													// 		),
													// 		ListTile(
													// 			title: const Text('Light Theme'),
													// 			onTap: () {
													// 				// TODO(MrHallows): Implement switch to light theme.
													// 				ExtendedNavigator.of(context).pop();
													// 			},
													// 		),
													// 	],
													// ),
												],
											),
										),
									);
								},
							);
						},
					),
				],
			),
			body: ListView.builder(
				itemCount: 20,
				itemBuilder: (BuildContext context, int index) {
					return ListTile(
						title: Text('User ${index+1}'),
						leading: Image.network('https://robohash.org/user$index?set=any&bgset=any}'),
						trailing: const Icon(Ionicons.pencil_outline),
					);
				},
			),
			// drawer: Drawer(
			// 	child: ListView(
			// 		children: <Widget>[
			// 			ListTile(
			// 				title: const Text('Dark Theme'),
			// 				onTap: () {
			// 				  // TODO(MrHallows): Implement switch to dark theme.
			// 				},
			// 			),
			// 			ListTile(
			// 				title: const Text('Light Theme'),
			// 				onTap: () {
			// 				  // TODO(MrHallows): Implement switch to light theme.
			// 				},
			// 			),
			// 		],
			// 	),
			// ),
		);
	}
}
