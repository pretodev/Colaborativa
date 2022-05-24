import 'package:flutter/material.dart';

import '../theme/colors.dart';

class DropdownFieldItem<T> {
  final T value;
  final String label;

  const DropdownFieldItem({
    required this.value,
    required this.label,
  });
}

class DropdownField<T> extends StatefulWidget {
  final List<DropdownFieldItem<T>> items;
  final ValueChanged<T?> onChanged;
  final T? value;
  final bool readOnly;

  const DropdownField({
    Key? key,
    required this.items,
    required this.onChanged,
    this.value,
    this.readOnly = false,
  }) : super(key: key);

  @override
  State<DropdownField<T>> createState() => _DropdownFieldState<T>();
}

class _DropdownFieldState<T> extends State<DropdownField<T>> {
  final _focusNode = FocusNode();
  final _layerLink = LayerLink();
  final _controller = TextEditingController();

  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      _controller.text =
          widget.items.firstWhere((item) => item.value == widget.value).label;
    }
    _focusNode.addListener(() {
      if (_focusNode.hasFocus && !widget.readOnly) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)?.insert(_overlayEntry!);
        return;
      }
      _overlayEntry?.remove();
    });
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject()! as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 5.0),
          child: Material(
            elevation: 4.0,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: widget.items
                  .map(
                    (item) => InkWell(
                      child: ListTile(
                        title: Text(item.label),
                      ),
                      onTap: () => {
                        widget.onChanged(item.value),
                        _controller.text = item.label,
                        _focusNode.unfocus(),
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextField(
        readOnly: true,
        focusNode: _focusNode,
        controller: _controller,
        decoration: const InputDecoration(
          suffixIcon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}
