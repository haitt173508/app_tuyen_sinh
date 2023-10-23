import 'package:app_tuyen_sinh_flutter/models/responses/login_response.dart';
import 'package:app_tuyen_sinh_flutter/providers/user_provider.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension ContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  ThemeData get initTheme => ThemeData(
        primarySwatch: Colors.red,
        primaryColor: ColorManager.primary,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        tabBarTheme: theme.tabBarTheme.copyWith(
          labelPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          indicatorSize: TabBarIndicatorSize.tab,
          // labelColor: Colors.red,
          // indicator: const BoxDecoration(
          //   color: Colors.white,
          //   border: Border(
          //     bottom: BorderSide(color: Colors.red, width: 2),
          //   ),
          // ),
          // unselectedLabelColor: Colors.white,
        ),
        textTheme: theme.textTheme
            .copyWith(
              bodyMedium: const TextStyle(
                fontSize: 16,
                height: 19.6 / 16,
                fontWeight: FontWeight.w400,
              ),
              bodySmall: const TextStyle(
                fontSize: 10,
                height: 13.33 / 10,
                fontWeight: FontWeight.w400,
              ),
              bodyLarge: const TextStyle(
                fontSize: 18,
                height: 21 / 18,
                fontWeight: FontWeight.w600,
              ),
            )
            .apply(bodyColor: Colors.black),
      );

  UserProvider get userProvider => read<UserProvider>();

  // User get user => read<UserProvider>().user!;
  User get user => userProvider.user!;

  NavigatorState get navState => Navigator.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  Size get scrSize => mediaQuery.size;
}
