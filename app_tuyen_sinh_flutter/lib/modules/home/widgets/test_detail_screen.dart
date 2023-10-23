import 'package:app_tuyen_sinh_flutter/models/responses/list_new_response.dart';
import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:app_tuyen_sinh_flutter/utils/manager/navigator_manager.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_appbar.dart';
import 'package:app_tuyen_sinh_flutter/utils/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class TestDetailScreen extends StatelessWidget {
  const TestDetailScreen({
    super.key,
    required this.newInfo,
  });

  final NewInfo newInfo;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Tin tức'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: HtmlWidget(
          newInfo.htmlData ?? '',
        ),
      ),
    );
  }
}

class TestDetailScreen2 extends StatelessWidget {
  const TestDetailScreen2({
    super.key,
    required this.htmlData,
  });

  final String htmlData;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: const Text('Nổi bật'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: HtmlWidget(htmlData),
      ),
    );
  }
}

toTestDetailPage(BuildContext context, {required NewInfo item}) {
  context.navState.push(
    AppPageRoute(
      page: TestDetailScreen(newInfo: item),
    ),
  );
}
