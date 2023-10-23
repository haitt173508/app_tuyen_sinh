import 'package:app_tuyen_sinh_flutter/utils/components/show_multi_choice_bottom_sheet.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ColumnLabelChipTextField<T> extends StatefulWidget {
  const ColumnLabelChipTextField({
    super.key,
    required this.items,
    this.selectedItems,
    required this.label,
    this.bottomSheetLabel = '',
  });

  final List<T> items;
  final List<T>? selectedItems;
  final Widget label;
  final String bottomSheetLabel;

  @override
  State<ColumnLabelChipTextField<T>> createState() =>
      _ColumnLabelChipTextFieldState<T>();
}

class _ColumnLabelChipTextFieldState<T>
    extends State<ColumnLabelChipTextField<T>> {
  late List<T> _items;

  @override
  void initState() {
    super.initState();
    _items = widget.selectedItems ?? <T>[];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label,
        const SizedBox(height: 4),
        InkWell(
          onTap: () async {
            var selected = await showMultiChoiceBottomSheet<T>(
              context,
              items: widget.items,
              selectedItems: _items,
              title: widget.bottomSheetLabel,
              searchDelegate: (keyword) {
                if (keyword.isEmpty) return widget.items;
                return [];
              },
            );

            if (selected != null) {
              setState(() {
                _items = selected;
              });
            }
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            constraints: const BoxConstraints(
              minHeight: 48,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    runSpacing: 4,
                    spacing: 4,
                    children: [
                      for (var item in _items)
                        DeleteChip(
                          item: item,
                          onDeleted: () {
                            setState(() {
                              _items.remove(item);
                            });
                          },
                        ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class DeleteChip<T> extends StatelessWidget {
  const DeleteChip({
    super.key,
    required this.item,
    this.onDeleted,
  });

  final T item;
  final Function()? onDeleted;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Text(item.toString()),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: context.theme.primaryColor.withOpacity(0.3),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      elevation: 0,
      selected: false,
      onDeleted: onDeleted,
      showCheckmark: false,
      isEnabled: true,
    );
  }
}
