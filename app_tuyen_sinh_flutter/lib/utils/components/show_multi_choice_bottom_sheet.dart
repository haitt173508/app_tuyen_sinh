import 'package:app_tuyen_sinh_flutter/utils/manager/color_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<List<T>?> showMultiChoiceBottomSheet<T>(
  BuildContext context, {
  required List<T> items,
  required List<T> Function(String keyword) searchDelegate,
  Widget Function(T item, bool isSelected)? itemBuilder,
  List<T> Function(List<T> selectedItems, T item, bool isSelected)? onTapItem,
  Widget Function(T item, bool isSelected)? itemSeparatedBuilder,
  String title = '',
  List<T>? selectedItems,
}) {
  List<T> selected = [if (selectedItems != null) ...selectedItems];
  List<T> searchedItems = [...items];
  FocusManager.instance.primaryFocus?.unfocus();
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(
                    children: [
                      InkWell(
                        child: const Icon(
                          Icons.clear,
                        ),
                        onTap: () {
                          Navigator.of(context).pop(selectedItems);
                        },
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 20,
                              height: 24 / 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        child: const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        onTap: () {
                          Navigator.of(context).pop(selected);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 45,
                  child: CupertinoSearchTextField(
                    itemColor: ColorManager.gray4D4D4D,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    placeholderStyle: TextStyle(
                      fontSize: 14,
                      color: ColorManager.gray4D4D4D,
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorManager.gray4D4D4D,
                    ),
                    prefixInsets: const EdgeInsets.only(left: 12),
                    itemSize: 20,
                    onSubmitted: (value) {
                      setState(() {
                        searchedItems = searchDelegate(value);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    separatorBuilder: (context, index) {
                      if (itemSeparatedBuilder == null) {
                        return const SizedBox.shrink();
                      }
                      var item = searchedItems[index];
                      final bool isSelected = selected.contains(item);
                      return itemSeparatedBuilder(item, isSelected);
                    },
                    itemCount: searchedItems.length,
                    itemBuilder: (context, index) {
                      var item = searchedItems[index];
                      final bool isSelected = selected.contains(item);
                      return itemBuilder == null
                          ? CheckboxListTile(
                              value: isSelected,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 4,
                              ),
                              title: Text(item.toString()),
                              visualDensity: const VisualDensity(
                                horizontal: -3,
                                vertical: -3,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  if (onTapItem != null) {
                                    selected = onTapItem(
                                      [...selected],
                                      item,
                                      isSelected,
                                    );
                                  } else {
                                    if (isSelected) {
                                      selected.remove(item);
                                    } else {
                                      selected.add(item);
                                    }
                                  }
                                });
                              },
                            )
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  if (onTapItem != null) {
                                    selected = onTapItem(
                                      [...selected],
                                      item,
                                      isSelected,
                                    );
                                  } else {
                                    if (isSelected) {
                                      selected.remove(item);
                                    } else {
                                      selected.add(item);
                                    }
                                  }
                                });
                              },
                              child: itemBuilder(item, isSelected),
                            );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      );
    },
  );
}
