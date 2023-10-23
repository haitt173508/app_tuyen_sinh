import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';

class HomeResponse {
  final List<NewByCategoryData> newByCategoryData;
  final List<Archive> archvies;
  final List<GroupCategory> groupCategory;

  HomeResponse({
    this.newByCategoryData = const [],
    this.archvies = const [],
    this.groupCategory = const [],
  });

  factory HomeResponse.fromJson(Map json) {
    return HomeResponse(
      newByCategoryData: json['new_by_category_data'] == null
          ? []
          : List<NewByCategoryData>.from(
              json['new_by_category_data'].map(
                (e) => NewByCategoryData.fromJson(e),
              ),
            ),
      archvies: json['archives'] == null
          ? []
          : List<Archive>.from(
              json['archives'].map(
                (e) => Archive.fromJson(e),
              ),
            ),
      groupCategory: json['group_category'] == null
          ? []
          : List<GroupCategory>.from(
              json['group_category'].map(GroupCategory.fromJson),
            ),
    );
  }
}

class NewByCategoryData {
  final String category;
  final String slug;
  final List<NewInfo> news;

  NewByCategoryData({
    required this.category,
    required this.news,
    required this.slug,
  });

  factory NewByCategoryData.fromJson(Map json) {
    return NewByCategoryData(
      category: json['category'],
      slug: json['slug'],
      news: List<NewInfo>.from(
        json['news'].map(
          (e) => NewInfo.fromJson(e),
        ),
      ),
    );
  }
}

class Archive {
  final int newId;
  final String imgUrl;
  final String archive;
  final String? htmlData;

  Archive({
    required this.newId,
    required this.imgUrl,
    required this.archive,
    this.htmlData,
  });

  factory Archive.fromJson(Map json) {
    return Archive(
      archive: json['archive'],
      newId: json['new_id'],
      imgUrl: json['img_url'],
      htmlData: json['html_data'],
    );
  }
}

class GroupCategory {
  final String name;
  final String imgUrl;

  GroupCategory({
    required this.name,
    required this.imgUrl,
  });

  factory GroupCategory.fromJson(Map json) {
    return GroupCategory(
      imgUrl: json['img_url'],
      name: json['name'],
    );
  }
}
