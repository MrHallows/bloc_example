// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:bloc_example/blocs/theme_bloc/index.dart';
import 'package:bloc_example/ui/theme/app_theme.dart';
import 'package:bloc_example/ui/widgets/custom_appbar.dart';
import 'package:bloc_example/utils/constants.dart';

class SettingsPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: CustomAppBar(
				title: const Text(Titles.settings),
			),
			body: ListView.builder(
				padding: const EdgeInsets.all(8.0),
				itemCount: AppTheme.values.length,
				itemBuilder: (BuildContext context, int index) {
					final AppTheme itemAppTheme = AppTheme.values[index];
					return Card(
						color: appThemeData[itemAppTheme].primaryColor,
						child: ListTile(
							title: Text(
								itemAppTheme.toString(),
								style: appThemeData[itemAppTheme].textTheme.bodyText2,
							),
							onTap: () {
								BlocProvider.of<ThemeBloc>(context).add(
									ThemeChanged(theme: itemAppTheme),
								);
							},
						),
					);
				},
			),
		);
	}
}
