class ListNewResponseData {
  final List<NewInfo> news;
  final int page;
  final int maxPage;

  ListNewResponseData({
    required this.news,
    this.page = 1,
    required this.maxPage,
  });
}

class NewInfo {
  final int id;
  final String title;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? countView;
  final String? subtitle;
  final String? imgUrl;
  final String? content;
  final String? source;
  final String? htmlData;

  NewInfo({
    required this.id,
    required this.title,
    this.createdAt,
    this.updatedAt,
    this.countView,
    this.subtitle,
    this.source,
    this.content,
    this.imgUrl,
    this.htmlData,
  });

  factory NewInfo.fromJson(Map json) {
    return NewInfo(
      id: json['id'],
      createdAt: DateTime.tryParse(json['created_at'].toString()),
      updatedAt: DateTime.tryParse(json['updated_at'].toString()),
      title: json['title'],
      countView: json['count_view'],
      subtitle: json['subtitle'],
      imgUrl: json['img_url'],
      content: json['content'],
      source: json['source'],
      htmlData: json['html_data'],
    );
  }
}
