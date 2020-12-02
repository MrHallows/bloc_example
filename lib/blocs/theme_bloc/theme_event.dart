// Package imports:
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

// Project imports:
import 'package:bloc_example/ui/theme/app_theme.dart';

@immutable
abstract class ThemeEvent extends Equatable {
	const ThemeEvent(List<Object> list);
}

class ThemeChanged extends ThemeEvent {
	ThemeChanged({
		@required this.theme,
	}) : super(<Object>[theme]);

	final AppTheme theme;

	@override
	// TODO(MrHallows): implement props
	List<Object> get props => <Object>[];

	@override
	bool operator ==(Object o) {
		if(identical(this, o)) return true;

		return o is ThemeChanged &&
			o.theme == theme;
	}

	@override
	int get hashCode => theme.hashCode;
}
