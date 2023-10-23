import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseAppBar extends AppBar {
  BaseAppBar({
    super.key,
    super.leading,
    super.automaticallyImplyLeading = true,
    super.title,
    super.actions,
    super.bottom,
    super.elevation = 0,
    super.scrolledUnderElevation,
    super.notificationPredicate = defaultScrollNotificationPredicate,
    super.shadowColor,
    super.surfaceTintColor,
    super.shape,
    super.backgroundColor = Colors.transparent,
    super.foregroundColor = Colors.transparent,
    super.iconTheme,
    super.actionsIconTheme,
    super.primary = true,
    super.centerTitle = true,
    super.excludeHeaderSemantics = false,
    super.titleSpacing,
    super.toolbarOpacity = 1.0,
    super.bottomOpacity = 1.0,
    super.toolbarHeight,
    super.leadingWidth,
    super.toolbarTextStyle,
    super.titleTextStyle,
    super.systemOverlayStyle,
  });

  @override
  State<BaseAppBar> createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<BaseAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.leading,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      title: widget.title,
      actions: widget.actions,
      flexibleSpace: Container(
        decoration: ShapeDecoration(
          color: context.theme.primaryColor,
          shape: widget.shape ?? const RoundedRectangleBorder(),
        ),
      ),
      bottom: widget.bottom,
      elevation: widget.elevation,
      scrolledUnderElevation: widget.scrolledUnderElevation,
      notificationPredicate: widget.notificationPredicate,
      shadowColor: widget.shadowColor,
      surfaceTintColor: widget.surfaceTintColor,
      shape: widget.shape,
      backgroundColor: widget.backgroundColor,
      foregroundColor: widget.foregroundColor,
      iconTheme: widget.iconTheme ??
          Theme.of(context).iconTheme.copyWith(
                color: Colors.white,
              ),
      actionsIconTheme: widget.actionsIconTheme,
      primary: widget.primary,
      centerTitle: widget.centerTitle,
      excludeHeaderSemantics: widget.excludeHeaderSemantics,
      titleSpacing: widget.titleSpacing,
      toolbarOpacity: widget.toolbarOpacity,
      bottomOpacity: widget.bottomOpacity,
      toolbarHeight: widget.toolbarHeight,
      leadingWidth: widget.leadingWidth,
      toolbarTextStyle: widget.toolbarTextStyle,
      titleTextStyle: widget.titleTextStyle ??
          const TextStyle(
            color: Colors.white,
            fontSize: 20,
            height: 28 / 20,
            fontWeight: FontWeight.w500,
          ),
      systemOverlayStyle: widget.systemOverlayStyle ??
          SystemUiOverlayStyle.light.copyWith(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
    );
  }
}
