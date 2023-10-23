import 'package:app_tuyen_sinh_flutter/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AccountInfoContainer extends StatelessWidget {
  const AccountInfoContainer({
    super.key,
    required this.infos,
    required this.icon,
    required this.title,
    this.trailing,
  });

  final List<AccountInfoRow> infos;
  final Widget icon;
  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: context.theme.primaryColor,
              radius: 10,
              child: IconTheme(
                data: const IconThemeData(
                  color: Colors.white,
                  size: 16,
                ),
                child: icon,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(
                color: context.theme.primaryColor,
                fontSize: 18,
                height: 24 / 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            if (trailing != null) trailing!,
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: infos.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),
            itemBuilder: (_, index) {
              var i = infos[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(i.label),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          i.info ?? '--',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class AccountInfoRow {
  final String label;
  final String? info;

  AccountInfoRow(this.label, this.info);
}
