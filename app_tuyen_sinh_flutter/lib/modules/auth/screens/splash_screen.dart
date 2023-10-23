import 'package:app_tuyen_sinh_flutter/utils/components/logo_bk.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/color_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgroundColor: ColorManager.primary.withOpacity(0.8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LogoBk(
            heroTag: 'logo_bk',
            height: 120,
          ),
          SizedBox(height: 20),
          SizedBox.square(
            dimension: 30,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 3,
            ),
          ),
        ],
      ),
    );
  }
}
