import 'package:app_tuyen_sinh_flutter/modules/auth/screens/update_account_info_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/account_info_container.dart';
import 'package:app_tuyen_sinh_flutter/providers/user_provider.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/datetime_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_elevated_button.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/network_circle_avatar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/point_widget.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/share_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UserProvider>(builder: (context, userProvider, _) {
        var user = userProvider.user;
        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('Tài khoản'),
                centerTitle: true,
                expandedHeight: 240,
                pinned: true,
                floating: true,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(24)),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: const DecorationImage(
                        image: AssetImage(
                          AssetManager.imgBannerBackground,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        NetworkCircleAvatar(
                          imageUrl: user?.avatarUrl,
                          size: 100,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          user?.username ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            height: 24 / 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Center(
                          child: PointWidget(
                            iconSize: 16,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: SafeArea(
            top: false,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  const ShareCodeWidget(),
                  const SizedBox(height: 20),
                  AccountInfoContainer(
                    icon: const Icon(Icons.priority_high_rounded),
                    trailing: BaseElevatedButton(
                      width: null,
                      height: 30,
                      buttonStyle: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            context.theme.primaryColor.withOpacity(0.2),
                      ),
                      textStyle: TextStyle(
                        color: context.theme.primaryColor,
                      ),
                      onPressed: () {
                        context.navState.push(
                          AppPageRoute(
                            page: const UpdateAccountInfoScreen(),
                          ),
                        );
                      },
                      child: const Text('Chỉnh sửa'),
                    ),
                    title: 'Thông tin cá nhân',
                    infos: [
                      AccountInfoRow('Họ và tên', user?.username),
                      AccountInfoRow(
                          'Ngày sinh', user?.birthDay?.toDmyString()),
                      AccountInfoRow('Giới tính', user?.sex.toString()),
                      AccountInfoRow('Địa chỉ', user?.address),
                      AccountInfoRow('Số điện thoại', user?.phone),
                      AccountInfoRow(
                          'Loại người dùng', user?.userType.toString()),
                      AccountInfoRow('Nơi làm việc', null),
                      AccountInfoRow('Chức vụ', null),
                    ],
                  ),
                  AccountInfoContainer(
                    icon: const Icon(Icons.person),
                    title: 'Thông tin tài khoản',
                    infos: [
                      AccountInfoRow('Tài khoản', user?.username),
                      AccountInfoRow(
                        'Email',
                        context.userProvider.authInfo?.email ?? '',
                      ),
                      AccountInfoRow('Số điện thoại', '0329701578'),
                      AccountInfoRow(
                        'Loại tài khoản',
                        context.userProvider.authInfo?.authType.toString() ??
                            '',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
