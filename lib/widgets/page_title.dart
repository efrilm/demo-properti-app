import 'package:flutter/material.dart';

import '../thema.dart';

class PageTitle extends StatelessWidget {
  final String title;
  final Function() onTap;
  final bool isView;

  const PageTitle({
    Key? key,
    required this.title,
    required this.onTap,
    this.isView = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: darkLightTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          isView == true
              ? GestureDetector(
                  onTap: onTap,
                  child: Row(
                    children: [
                      Text(
                        "Lihat Semua",
                        style: redTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: light,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: kRedColor,
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
