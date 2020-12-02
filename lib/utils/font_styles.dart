// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:bloc_example/ui/theme/colors.dart';

class FontStyles {
	static const String fontFamily = 'Maven Pro';

	static const TextStyle pageTitle = TextStyle(
		fontSize: 20.0,
		fontWeight: FontWeight.w800
	);

	static const TextStyle pageErrorTitle = TextStyle(
		fontSize: 20.0,
		fontWeight: FontWeight.w800,
		color: AppColors.error
	);
}
