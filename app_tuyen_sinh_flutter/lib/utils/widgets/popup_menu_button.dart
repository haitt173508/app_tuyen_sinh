import 'package:flutter/material.dart';

class BasePopupMenuButton<T> extends StatefulWidget {
  const BasePopupMenuButton({
    super.key,
    required this.items,
    this.child,
    this.initValue,
    required this.onSelected,
  });

  final T? initValue;
  final List<T> items;
  final Widget? child;
  final ValueChanged<T> onSelected;

  @override
  State<BasePopupMenuButton<T>> createState() => _BasePopupMenuButtonState<T>();
}

class _BasePopupMenuButtonState<T> extends State<BasePopupMenuButton<T>> {
  Size? _size;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      offset: const Offset(0, 12),
      constraints: BoxConstraints(
        minWidth: _size?.width ?? 0,
      ),
      elevation: 8,
      position: PopupMenuPosition.under,
      onSelected: (value) {
        widget.onSelected(value);
      },
      itemBuilder: (context) => [
        for (var item in widget.items)
          PopupMenuItem(
            value: item,
            child: Text(
              item.toString(),
            ),
          ),
      ].cast(),
      child: _GetSizedWidget(
        child: widget.child,
        onGetSized: (value) {
          setState(() {
            _size = value;
          });
        },
      ),
    );
  }
}

class _GetSizedWidget extends StatefulWidget {
  const _GetSizedWidget({
    required this.onGetSized,
    required this.child,
  });

  final ValueChanged<Size> onGetSized;
  final Widget? child;

  @override
  State<_GetSizedWidget> createState() => __GetSizedWidgetState();
}

class __GetSizedWidgetState extends State<_GetSizedWidget> {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var box = _key.currentContext!.findRenderObject() as RenderBox;
      widget.onGetSized(box.size);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: _key,
      child: widget.child,
    );
  }
}
