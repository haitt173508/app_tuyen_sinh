import 'package:app_tuyen_sinh_flutter/models/responses/home_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/test_detail_screen.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/asset_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_network_image.dart';
import 'package:flutter/material.dart';

class HomeArchiveSlider extends StatelessWidget {
  const HomeArchiveSlider({
    super.key,
    required this.archive,
  });

  final List<Archive> archive;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: archive.length,
      child: Builder(builder: (context) {
        return SizedBox(
          height: 150,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Opacity(
                opacity: 0.45,
                child: Image.asset(
                  AssetManager.imgBkBackground,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: archive.length,
                onPageChanged: (value) {
                  DefaultTabController.of(context)?.index = value;
                },
                itemBuilder: (context, index) {
                  var item = archive[index];
                  return InkWell(
                    onTap: () {
                      if (item.htmlData != null) {
                        context.navState.push(
                          AppPageRoute(
                            page: TestDetailScreen2(htmlData: item.htmlData!),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          BaseNetworkImage(
                            imageUrl: item.imgUrl,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                item.archive,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 8,
                  right: 8,
                ),
                child: TabPageSelector(
                  indicatorSize: 10,
                  borderStyle: BorderStyle.none,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
