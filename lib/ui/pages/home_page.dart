// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:ionicons/ionicons.dart';

// Project imports:
import 'package:bloc_example/router.gr.dart';
import 'package:bloc_example/ui/widgets/custom_appbar.dart';
import 'package:bloc_example/ui/widgets/custom_bottom_navbar.dart';
import 'package:bloc_example/utils/constants.dart';

class HomePage extends StatelessWidget {
	const HomePage();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: CustomAppBar(
				title: 'Home',
				actions: <Widget>[
					IconButton(
						icon: const Icon(
							Ionicons.settings_outline,
						),
						tooltip: Tooltips.settings,
						onPressed: () {
							ExtendedNavigator.of(context).pushSettingsPage();
						},
					),
				],
			),
			body: Center(
				child: Container(),
			),
			bottomNavigationBar: const CustomBottomNavBar(),
		);
	}
}
