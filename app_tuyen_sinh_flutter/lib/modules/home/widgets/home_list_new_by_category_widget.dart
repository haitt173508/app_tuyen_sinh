import 'package:app_tuyen_sinh_flutter/models/responses/home_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/list_new_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/test_detail_screen.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_network_image.dart';
import 'package:flutter/material.dart';

class HomeListNewByCategoryWidget extends StatelessWidget {
  const HomeListNewByCategoryWidget({
    super.key,
    required this.data,
  });

  final NewByCategoryData data;

  @override
  Widget build(BuildContext context) {
    var news = data.news;
    return SizedBox(
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 4),
            child: Row(
              children: [
                Text(
                  data.category,
                  maxLines: 1,
                  style: TextStyle(
                    color: context.theme.primaryColor,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                const SizedBox(width: 8),
                TextButton.icon(
                  icon: const Text('Xem thêm'),
                  onPressed: () {
                    context.navState.push(
                      AppPageRoute(
                        page: ListNewScreen(
                          title: data.category,
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: news.length,
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
                var item = news[index];
                return SizedBox(
                  width: 260,
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
                          Expanded(
                            flex: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: BaseNetworkImage(
                                imageUrl: item.imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
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
                                    Expanded(
                                      child: Text(
                                        item.subtitle!,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
