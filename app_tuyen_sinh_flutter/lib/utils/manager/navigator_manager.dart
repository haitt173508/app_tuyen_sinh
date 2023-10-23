import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class NavigatorManager {}

class AppPageRoute<T> extends PageRoute<T>
    with MaterialRouteTransitionMixin<T> {
  /// Construct a MaterialPageRoute whose contents are defined by [builder].
  ///
  /// The values of [builder], [maintainState], and [PageRoute.fullscreenDialog]
  /// must not be null.
  AppPageRoute({
    required this.page,
    this.providers,
    this.maintainState = true,
    this.routeSettings,
    super.fullscreenDialog,
  }) : super(
    settings: routeSettings ?? RouteSettings(
      name: page.runtimeType.toString(),
    ),
  ) {
    assert(opaque);
  }

  final Widget page;
  final RouteSettings? routeSettings;
  final List<SingleChildWidget>? providers;

  @override
  Widget buildContent(context) {
    if (providers?.isNotEmpty == true) {
      return MultiProvider(
        providers: providers!,
        child: page,
      );
    }
    return page;
  }

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';
}
