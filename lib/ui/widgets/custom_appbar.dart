// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:meta/meta.dart';

// Project imports:
import 'package:bloc_example/ui/theme/colors.dart';
import 'package:bloc_example/utils/font_styles.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
	CustomAppBar({
		Key key,
		this.leading,
		@required this.title,
		this.actions,
	}) : preferredSize = const Size.fromHeight(48.0),
			 super(key: key);

	@override
	final Size preferredSize;

	// final String title;
	final dynamic title;
	final Widget leading;
	final List<Widget> actions;

	@override
	Widget build(BuildContext context) {
		return AppBar(
			title: title is String
				? Text(
					title,
					style: const TextStyle(
						fontFamily: FontStyles.fontFamily,
						color: AppColors.accent,
					),
				)
				: title,
			leading: leading,
			actions: actions,
			backgroundColor: AppColors.primary,
			// Avoid redundant argument values. dart(avoid_redundant_argument_values)
   		// ignore: avoid_redundant_argument_values
			automaticallyImplyLeading: true,
			centerTitle: true,
		);
	}

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Size>('preferredSize', preferredSize));
    // properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty('title', title));
    properties.add(DiagnosticsProperty<Widget>('leading', leading));
    properties.add(IterableProperty<Widget>('actions', actions));
  }
}
