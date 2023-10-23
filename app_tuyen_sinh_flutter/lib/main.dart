import 'package:app_tuyen_sinh_flutter/modules/auth/screens/login_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/auth/screens/splash_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/main_screen.dart';
import 'package:app_tuyen_sinh_flutter/providers/user_provider.dart';
import 'package:app_tuyen_sinh_flutter/services/notification_service.dart';
import 'package:app_tuyen_sinh_flutter/services/one_signal_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/share_pref_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharePrefManager.instance.init();
  await LocalMessageNotificationService().initService();
  OneSignalService.registerOnesignal();
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final UserProvider _userProvider = UserProvider(null);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadInitData());
  }

  _loadInitData() async {
    await Future.delayed(const Duration(seconds: 2));
    var loggedInData = SharePrefManager.instance.getLoggedInData();
    if (loggedInData != null) {
      _userProvider.authInfo = loggedInData.user;
      navKey.currentContext!.navState.pushAndRemoveUntil(
        AppPageRoute(
          page: const MainScreen(),
        ),
        (_) => false,
      );
    } else {
      navKey.currentContext!.navState.pushAndRemoveUntil(
        AppPageRoute(
          page: const LoginScreen(),
        ),
        (_) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: _userProvider,
        ),
      ],
      child: MaterialApp(
        navigatorKey: navKey,
        title: 'Flutter Demo',
        theme: context.initTheme,
        home: const SplashScreen(),
      ),
    );
  }
}
