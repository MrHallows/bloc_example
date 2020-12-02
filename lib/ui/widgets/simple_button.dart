// Flutter imports:
import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key key,
    @required this.onPressed,
    @required this.icon
  }) : super(key: key);

	final Function onPressed;
	final IconData icon;

	@override
	Widget build(BuildContext context) {
		return IconButton(
			onPressed: onPressed,
			icon: Icon(icon),
			iconSize: 48,
		);
	}
}
