// Flutter imports:
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ThemeState extends Equatable {
	const ThemeState({
		@required this.themeData,
	});

	final ThemeData themeData;

	@override
	// TODO(MrHallows): implement props
	List<Object> get props => <Object>[themeData];
}
