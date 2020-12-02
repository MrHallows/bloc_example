// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Project imports:
import 'package:bloc_example/ui/theme/colors.dart';

/// Contains useful functions to reduce boilerplate code.
class UIHelper {
	/// Shorthand for getting device screen width from [MediaQuery] class.
	static double screenWidth(BuildContext context) =>
		MediaQuery.of(context).size.width;
	/// Shorthand for getting device screen height from [MediaQuery] class.
	static double screenHeight(BuildContext context) =>
		MediaQuery.of(context).size.height;

	// Vertical spacing constants. Adjust to your liking.
	/// Small vertical buffer (4.0).
	static const double _bufferVS = 4.0;
	/// Medium vertical buffer (8.0).
	static const double _bufferVM = 8.0;
	/// Large vertical buffer (24.0).
	static const double _bufferVL = 24.0;
	/// Extra-large vertical buffer (48.0).
	static const double _bufferVXL = 48.0;

	// Horizontal spacing constants. Adjust to your liking.
	/// Small horizontal buffer (4.0).
	static const double _bufferHS = 4.0;
	/// Medium horizontal buffer (8.0).
	static const double _bufferHM = 8.0;
	/// Large horizontal buffer (24.0).
	static const double _bufferHL = 24.0;
	/// Extra-large horizontal buffer (48.0).
	static const double _bufferHXL = 48.0;

	/// Returns a vertical buffer with height set to [_bufferVS].
	static Widget bufferVS() =>
		bufferV(_bufferVS);

	/// Returns a vertical buffer with height set to [_bufferVM].
	static Widget bufferVM() =>
		bufferV(_bufferVM);

	/// Returns a vertical buffer with height set to [_bufferVL].
	static Widget bufferVL() =>
		bufferV(_bufferVL);

	/// Returns a vertical buffer with height set to [_bufferVL].
	static Widget bufferVXL() =>
		bufferV(_bufferVXL);

	/// Returns a vertical buffer equal to the [height] provided.
	static Widget bufferV(double height) =>
		SizedBox(height: height);

	/// Returns a horizontal buffer with height set to [_bufferHS].
	static Widget bufferHS() =>
		bufferH(_bufferHS);

	/// Returns a horizontal buffer with height set to [_bufferHM].
	static Widget bufferHM() =>
		bufferH(_bufferHM);

	/// Returns a horizontal buffer with height set to [_bufferHL].
	static Widget bufferHL() =>
		bufferH(_bufferHL);

	/// Returns a horizontal buffer with height set to [_bufferHXL].
	static Widget bufferHXL() =>
		bufferH(_bufferHXL);

	/// Returns a horizontal buffer equal to the [width] provided.
	static Widget bufferH(double width) =>
		SizedBox(width: width);


	/// Provides an input field with a title that stretches the full width of
	/// the screen.
	static Widget inputField({
		@required TextEditingController controller,
		String title,
		String placeholder,
		String validationMessage,
		bool isPassword = false,
		double spaceBetweenTitle = 15.0,
		double padding = 10.0
	}) => Column(
		crossAxisAlignment: CrossAxisAlignment.start,
		children: <Widget>[
			Text(
				title,
				style: const TextStyle(
					fontWeight: FontWeight.w700,
					fontSize: 12.0,
				),
			),
			if(validationMessage != null) Text(
				validationMessage,
				style: TextStyle(
					color: Colors.red[400],
					fontSize: 12.0,
				),
			) else Container(),
			Container(
				alignment: const Alignment(0.0, 0.0),
				padding: EdgeInsets.only(left: padding),
				margin: EdgeInsets.only(top: spaceBetweenTitle),
				width: double.infinity,
				height: 36.0,
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(5.0),
					color: AppColors.darkGray
				),
				child: TextField(
					controller: controller,
					obscureText: isPassword,
					style: const TextStyle(fontSize: 12.0),
					decoration: InputDecoration.collapsed(
						hintText: placeholder,
						hintStyle: TextStyle(
							color: Colors.grey[600],
							fontSize: 12.0,
						),
					),
				),
			)
		]
	);

	static Widget fullScreenButton({
		String title,
		Function onTap
	}) => GestureDetector(
		onTap: onTap,
		child: Container(
			width: double.infinity,
			height: 36.0,
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(5.0),
				color: const Color(0xFF09CAAC),
			),
			child: Center(
				child: Text(
					title,
					style: const TextStyle(fontWeight: FontWeight.w800),
				),
			),
		),
	);
}
