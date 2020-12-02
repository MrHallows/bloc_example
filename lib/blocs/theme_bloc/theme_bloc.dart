// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:bloc_example/blocs/theme_bloc/index.dart';
import 'package:bloc_example/ui/theme/app_theme.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
	ThemeBloc([ThemeState initialState]) : super(initialState);

	@override
	ThemeState get initialState =>
			ThemeState(themeData: appThemeData[AppTheme.dark]);

	@override
	Stream<ThemeState> mapEventToState(
		ThemeEvent event,
	) async* {
		if (event is ThemeChanged) {
			yield ThemeState(themeData: appThemeData[event.theme]);
		}
	}
}
