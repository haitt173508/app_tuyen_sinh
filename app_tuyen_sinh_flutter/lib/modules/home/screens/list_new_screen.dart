import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/test_detail_screen.dart';
import 'package:app_tuyen_sinh_flutter/services/api_service.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/datetime_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/dialog_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_network_image.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class ListNewScreen extends StatefulWidget {
  const ListNewScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ListNewScreen> createState() => _ListNewScreenState();
}

class _ListNewScreenState extends State<ListNewScreen> {
  List<NewInfo>? _news;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getListNews();
    });
  }

  Future _getListNews() async {
    DialogManager.showLoad(context);
    var res = await ApiService.instance.getHomeData();
    if (!mounted) return;
    DialogManager.hideLoad(context);

    if (res.code == 200) {
      setState(() {
        var map = res.responseData!.newByCategoryData.map((e) => e.news);
        if (map.isNotEmpty) {
          _news = map.reduce(
            (a, b) => [...a, ...b],
          )..shuffle();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: Text(widget.title),
      ),
      body: _news?.isNotEmpty == true
          ? ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _news!.length,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                var item = _news![index];
                return SizedBox(
                  height: 280,
                  child: Card(
                    shadowColor: Colors.black.withOpacity(0.5),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        toTestDetailPage(context, item: item);
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: BaseNetworkImage(
                                imageUrl: item.imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  item.title,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                if (item.subtitle != null)
                                  Text(
                                    item.subtitle!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        (item.createdAt ?? DateTime.now())
                                            .toDmyString(),
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.remove_red_eye,
                                        size: 20,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        (item.countView ?? 0).toString(),
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : null,
    );
  }
}
