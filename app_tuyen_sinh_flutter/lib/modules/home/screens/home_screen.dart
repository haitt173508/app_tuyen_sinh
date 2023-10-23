import 'dart:developer';

import 'package:app_tuyen_sinh_flutter/models/responses/home_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/home_archive_slider.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/home_grid_category.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/home_list_new_by_category_widget.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/menu_drawer.dart';
import 'package:app_tuyen_sinh_flutter/modules/setting/setting_screen.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/services/data_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/functions/catch_handler.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/network_circle_avatar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/point_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  HomeResponse? _homeResponse;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadHomeData();
    });
  }

  Future _loadHomeData() async {
    DialogManager.showLoad(context);

    var res = await ApiService.instance.getHomeData();

    if (!mounted) return;

    DialogManager.hideLoad(context);

    if (res.code == 200) {
      setState(() {
        _homeResponse = res.responseData;
      });
    } else {
      DialogManager.showErrorDialog(context, Text(res.message!));
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = context.user;
    super.build(context);
    return BaseScaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[200],
        onPressed: () async {
          var urlString = 'http://m.me/tsdhbk';
          try {
            var canLaunch = await canLaunchUrlString(urlString);
            log(canLaunch.toString());
            if (canLaunch) {
              await launchUrlString(
                urlString,
                mode: LaunchMode.externalApplication,
              );
              log('Open success');
            }
          } catch (e, s) {
            catchHandler(e, s);
          } finally {
            Navigator.of(context).popUntil((route) => route is! DialogRoute);
          }
        },
        child: Image.asset(
          AssetManager.imgFbMessengerLogo,
          height: 45,
        ),
      ),
      appBar: BaseAppBar(
        centerTitle: true,
        leadingWidth: 40,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        titleTextStyle: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetManager.imgLogoBk,
              height: 40,
            ),
            const SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('TUYỂN SINH'),
                SizedBox(height: 2),
                Text(
                  'ĐẠI HỌC BÁCH KHOA HÀ NỘI',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: SizedBox(
        width: context.scrSize.width * 2 / 3,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: context.mediaQuery.padding.top),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              width: double.infinity,
              color: context.theme.primaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NetworkCircleAvatar(
                    imageUrl: user.username,
                    size: 80,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 16,
                        height: 21 / 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text('Xin chào'),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    AppPageRoute(
                                      page: const SettingScreen(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            context.user.username ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              height: 21 / 18,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: PointWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.white,
              width: double.infinity,
            ),
            Expanded(
              child: MenuDrawer(
                items: menus,
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _loadHomeData,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_homeResponse?.archvies.isNotEmpty == true)
                HomeArchiveSlider(
                  archive: _homeResponse!.archvies,
                ),
              if (_homeResponse?.groupCategory.isNotEmpty == true)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: HomeGridCategory(
                    category: _homeResponse!.groupCategory,
                  ),
                ),
              if (_homeResponse?.archvies.isNotEmpty == true)
                for (var listNew in _homeResponse!.newByCategoryData)
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: HomeListNewByCategoryWidget(
                      data: listNew,
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
