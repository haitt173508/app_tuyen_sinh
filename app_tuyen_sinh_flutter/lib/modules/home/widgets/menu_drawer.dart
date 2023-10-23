import 'package:app_tuyen_sinh_flutter/models/tree_menu_item.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/list_new_screen.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    super.key,
    required this.items,
  });

  final List<TreeMenuItem> items;

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  late List<TreeMenuItem> _items;
  final List<TreeMenuItem> _history = [];

  TreeMenuItem? get _current => _history.isEmpty ? null : _history.last;

  @override
  void initState() {
    super.initState();
    _items = widget.items;
  }

  final _duration = const Duration(milliseconds: 250);
  TextDirection _direction = TextDirection.ltr;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 25,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: () {
                  if (_history.isNotEmpty) {
                    setState(() {
                      _history.removeLast();
                      _direction = TextDirection.rtl;
                      _items = _current?.children ?? widget.items;
                    });
                  }
                },
                child: AnimatedSwitcher(
                  duration: _duration,
                  reverseDuration: _duration,
                  child: Row(
                    key: ValueKey(_current?.id),
                    children: [
                      if (_current != null)
                        Icon(
                          Icons.arrow_back_ios,
                          size: 14,
                          color: context.theme.primaryColor,
                        ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            _current?.name ?? 'Menu',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 13,
                              height: 14 / 13,
                              color: context.theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: _duration,
              reverseDuration: _duration,
              transitionBuilder: (child, animation) {
                return ClipRect(
                  child: SlideTransition(
                    textDirection: _direction,
                    position: Tween<Offset>(
                            begin: const Offset(1, 0), end: Offset.zero)
                        .animate(animation),
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                );
              },
              child: ListView.separated(
                key: ValueKey(_current?.id),
                padding: EdgeInsets.zero,
                separatorBuilder: (context, index) => Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.black26,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                ),
                itemBuilder: (context, index) {
                  var item = _items[index];
                  return TreeItemWidget(
                    item: item,
                    onTap: () {
                      if (item.hasChildren) {
                        setState(() {
                          _history.add(item);
                          _items = item.children!;
                          _direction = TextDirection.ltr;
                        });
                      } else {
                        context.navState.push(
                          AppPageRoute(page: ListNewScreen(title: item.name)),
                        );
                      }
                    },
                  );
                },
                itemCount: _items.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TreeItemWidget extends StatelessWidget {
  const TreeItemWidget({
    super.key,
    required this.item,
    this.onTap,
  });

  final TreeMenuItem item;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                item.name,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  height: 21 / 16,
                ),
              ),
            ),
            if (item.hasChildren)
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black87,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
