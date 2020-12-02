// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
	const CustomField({
		Key key,
		this.label,
		this.prefixIcon,
		this.suffixIcon,
		this.controller
	}) : super(key: key);

	final String label;
	final IconData prefixIcon;
	final IconData suffixIcon;
	final TextEditingController controller;

	@override
	Widget build(BuildContext context) {
		return Container(
			margin: const EdgeInsets.only(bottom: 24),
			child: TextField(
				controller: controller,
				// clearButtonMode: OverlayVisibilityMode.editing,
				style: const TextStyle(
					fontSize: 16.0,
					color: Colors.white,
					fontWeight: FontWeight.bold,
				),
				// padding: const EdgeInsets.all(2.0),
				decoration: InputDecoration(
					labelText: label,
					labelStyle: TextStyle(
						fontSize: 16.0,
						color: Colors.grey[500],
						fontWeight: FontWeight.bold,
					),
					enabledBorder: UnderlineInputBorder(
						borderSide: BorderSide(
							color: Colors.grey[500],
							width: 2.0,
						),
					),
					focusedBorder: UnderlineInputBorder(
						borderSide: BorderSide(
							color: Colors.grey[500],
							width: 2.0,
						),
					),
					border: UnderlineInputBorder(
						borderSide: BorderSide(
							color: Colors.grey[500],
							width: 2.0,
						),
					),
					prefixIcon: prefixIcon != null
						? Icon(
							prefixIcon,
							color: Colors.grey[500],
						)
						: Container(),
					suffixIcon: suffixIcon != null
						? Icon(
							suffixIcon,
							color: Colors.grey[500],
						)
						: Container(),
				),
			),
		);
	}

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(DiagnosticsProperty<IconData>('prefixIcon', prefixIcon));
    properties.add(DiagnosticsProperty<IconData>('suffixIcon', suffixIcon));
    properties.add(DiagnosticsProperty<TextEditingController>('controller', controller));
  }
}
