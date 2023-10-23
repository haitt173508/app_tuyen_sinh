import 'package:app_tuyen_sinh_flutter/models/responses/home_response.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/list_new_screen.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_network_image.dart';
import 'package:flutter/material.dart';

class HomeGridCategory extends StatelessWidget {
  const HomeGridCategory({
    super.key,
    required this.category,
  });

  final List<GroupCategory> category;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemBuilder: (context, index) {
        var item = category[index];
        return InkWell(
          onTap: () {
            context.navState.push(
              AppPageRoute(
                page: ListNewScreen(title: item.name),
              ),
            );
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              BaseNetworkImage(
                imageUrl: item.imgUrl,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                color: Colors.grey.withOpacity(0.7),
                child: Text(
                  item.name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 204, 49, 38),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: category.length,
    );
  }
}
