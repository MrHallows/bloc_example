// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// Project imports:
import 'package:bloc_example/ui/theme/colors.dart';
import 'package:bloc_example/utils/constants.dart';
import 'package:bloc_example/utils/ui_helper.dart';

class CustomBottomNavBar extends StatefulWidget {
	const CustomBottomNavBar({Key key}) : super(key: key);

	@override
	_CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
	@override
	Widget build(BuildContext context) {
		return Positioned(
			bottom: 0,
			left: 0,
			child: Container(
				width: UIHelper.screenWidth(context),
				height: 80.0,
				// color: AppColors.surface,
				child: Stack(
					children: <Widget>[
						const CustomBottomNavBar(),
						Center(
							heightFactor: 0.6,
							child: FloatingActionButton(
								backgroundColor: AppColors.accent,
								shape: BeveledRectangleBorder(
									borderRadius: BorderRadius.circular(50.0),
								),
								tooltip: Tooltips.doors,
								onPressed: () {},
								child: const Icon(Icons.sensor_door_sharp),
							),
						),
						Positioned(
							bottom: 0,
							child: Container(
								width: UIHelper.screenWidth(context),
								height: 60.0,
								child: Row(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: <Widget>[
										IconButton(
											icon: const Icon(Icons.home_rounded),
											tooltip: Tooltips.home,
											onPressed: () {},
										),
										IconButton(
											icon: const Icon(Icons.search_rounded),
											tooltip: Tooltips.search,
											onPressed: () {},
										),
										UIHelper.bufferHS(),
										// SizedBox(
										// 	width: UIHelper.screenWidth(context) * 0.10,
										// ),
										IconButton(
											icon: const Icon(Icons.bookmark_rounded),
											tooltip: Tooltips.bookmarks,
											onPressed: () {},
										),
										IconButton(
											icon: const Icon(Icons.settings_rounded),
											tooltip: Tooltips.settings,
											onPressed: () {},
										)
									],
								),
							),
						),
					],
				),
			),
		);
	}
}

Widget _customPaint(BuildContext context) {
	return CustomPaint(
		size: const Size(800, 200),
		painter: RPSCustomPainter(),
	);
}

class RPSCustomPainter extends CustomPainter {
	@override
	void paint(Canvas canvas, Size size) {
		final Paint paint = Paint()
			..color = AppColors.surface
			..style = PaintingStyle.fill;

		final Path path = Path();
		path.moveTo(0, size.height);
		path.lineTo(0, size.height * 0.42);
		path.lineTo(size.width * 0.40, size.height * 0.25);
		path.lineTo(size.width * 0.50, size.height * 0.68);
		path.lineTo(size.width * 0.60, size.height * 0.25);
		path.lineTo(size.width, size.height * 0.42);
		path.lineTo(size.width, size.height);
		path.lineTo(0, size.height);
		path.close();

		canvas.drawPath(path, paint);
	}

	@override
	bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
