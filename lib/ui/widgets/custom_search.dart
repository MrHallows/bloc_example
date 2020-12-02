// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:ionicons/ionicons.dart';

// Project imports:
import 'package:bloc_example/ui/theme/colors.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({
		this.controller,
		this.hint,
		this.enable
	});

  final TextEditingController controller;
  final String hint;
  final bool enable;

  @override
  _CustomSearchState createState() => _CustomSearchState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>('controller', controller));
    properties.add(StringProperty('hint', hint));
    properties.add(DiagnosticsProperty<bool>('enable', enable));
  }
}

class _CustomSearchState extends State<CustomSearch> {
	FocusNode _searchNode;
	bool _focused = false;
  FocusAttachment _searchNodeAttachment;
  Color _color = AppColors.white;

  @override
  void initState() {
    super.initState();
    _searchNode = FocusNode(debugLabel: 'CustomSearch');
    _searchNode.addListener(_handleFocusChange);
    _searchNodeAttachment = _searchNode.attach(context, onKey: _handleKeyPress);
  }

  void _handleFocusChange() {
    if(_searchNode.hasFocus != _focused) {
      setState(() {
        _focused = _searchNode.hasFocus;
      });
    }
  }

  bool _handleKeyPress(FocusNode node, RawKeyEvent event) {
    if(event is RawKeyDownEvent) {
      print('Focus node ${node.debugLabel} got key event: ${event.logicalKey}');
      if(event.logicalKey == LogicalKeyboardKey.keyR) {
        print('Changing color to red.');
        setState(() {
          _color = AppColors.lightRed;
        });
        return true;
      } else if(event.logicalKey == LogicalKeyboardKey.keyG) {
        print('Changing color to green.');
        setState(() {
          _color = AppColors.lightTeal;
        });
        return true;
      } else if(event.logicalKey == LogicalKeyboardKey.keyB) {
        print('Changing color to blue.');
        setState(() {
          _color = AppColors.lightBlue;
        });
        return true;
      }
    }
    return false;
  }

  @override
  void dispose() {
    _searchNode.removeListener(_handleFocusChange);
    // The attachment will automatically be detached in dispose().
    _searchNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
			height: 36.0,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: const BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
			),
      child: TextField(
				cursorColor: AppColors.accent2,
				cursorWidth: 1.0,
				focusNode: _searchNode,
				textAlignVertical: TextAlignVertical.center,
        enabled: widget.enable,
        controller: widget.controller,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
					contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
					hintText: widget.hint,
					hintStyle: const TextStyle(color: AppColors.textBody),
					prefixIcon: const Icon(
						Ionicons.search_outline,
						color: AppColors.accent2,
						size: 16.0,
					),
					fillColor: AppColors.background,
					enabledBorder: const OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(6.0)),
					),
					focusedBorder: const OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(6.0)),
					),
					disabledBorder: const OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(6.0)),
					),
					border: const OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(6.0)),
					),
				),
      ),
    );
  }
}
