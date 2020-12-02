// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:bloc_example/blocs/theme_bloc/theme_bloc.dart';
import 'package:bloc_example/models/theme_model.dart';
import 'package:bloc_example/ui/theme/colors.dart';

enum AppTheme {
	dark,
	light,
	pastelDark,
	pastelLight
}

final Map<AppTheme, ThemeData> appThemeData = <AppTheme, ThemeData>{
	/// Dark Theme
	AppTheme.dark: ThemeData(
		brightness: Brightness.dark,
		primaryColor: AppColors.primary,
		accentColor: AppColors.accent,
		scaffoldBackgroundColor: AppColors.surface,
		canvasColor: AppColors.canvas,
		backgroundColor: AppColors.background,
		cardColor: AppColors.surface,
		materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
	),

	/// Light Theme
	AppTheme.light: ThemeData(
		brightness: Brightness.light,
		primaryColor: AppColors.primary,
		accentColor: AppColors.accent,
		scaffoldBackgroundColor: AppColors.surface,
		canvasColor: AppColors.canvas,
		backgroundColor: AppColors.background,
		cardColor: AppColors.surface,
		materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
	),

	/// Pastel Dark Theme
	AppTheme.pastelDark: ThemeData(
		brightness: Brightness.dark,
		primaryColor: AppColors.primary,
		accentColor: AppColors.accent,
		scaffoldBackgroundColor: AppColors.surface,
		canvasColor: AppColors.canvas,
		backgroundColor: AppColors.background,
		cardColor: AppColors.surface,
		materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
	),

	/// Pastel Light Theme
	AppTheme.pastelLight: ThemeData(
		brightness: Brightness.light,
		primaryColor: AppColors.primary,
		accentColor: AppColors.accent,
		scaffoldBackgroundColor: AppColors.surface,
		canvasColor: AppColors.canvas,
		backgroundColor: AppColors.background,
		cardColor: AppColors.surface,
		materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
	)
};

// class DarkTheme implements ThemeModel {
//   // DarkTheme._();

//   @override
//   // TODO(MrHallows): implement name
//   String get name => 'dark';

//   @override
//   // TODO(MrHallows): implement data
//   ThemeData get data => ThemeData(
// 		brightness: Brightness.dark,
// 		primaryColor: AppColors.primary,
// 		accentColor: AppColors.accent,
// 		scaffoldBackgroundColor: AppColors.surface,
// 		canvasColor: AppColors.canvas,
// 		backgroundColor: AppColors.background,
// 		materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
// 	);

//   @override
//   set data(ThemeData _data) => data = _data;

// 	@override
// 	set name(String _name) => name = _name;
// }


// class AppTheme {
// 	//AppTheme._();

// 	static ThemeModel get active => ThemeBloc().state;

// 	/// Dark Theme
// 	static ThemeModel dark = ThemeModel(
// 		'dark',
// 		ThemeData(
// 			brightness: Brightness.dark,
// 			primaryColor: AppColors.primary,
// 			accentColor: AppColors.accent,
// 			scaffoldBackgroundColor: AppColors.surface,
// 			canvasColor: AppColors.canvas,
// 			backgroundColor: AppColors.background,
// 			cardColor: AppColors.surface,
// 			materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
// 		)
// 	);

// 	/// Light Theme
// 	static ThemeModel light = ThemeModel(
// 		'light',
// 		ThemeData(
// 			brightness: Brightness.light,
// 			primaryColor: AppColors.primary,
// 			accentColor: AppColors.accent,
// 			scaffoldBackgroundColor: AppColors.surface,
// 			canvasColor: AppColors.canvas,
// 			backgroundColor: AppColors.background,
// 			cardColor: AppColors.surface,
// 			materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
// 		)
// 	);
// }
