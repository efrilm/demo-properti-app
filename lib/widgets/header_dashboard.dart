import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';
import 'package:properti1/widgets/card_icon.dart';

class HeaderDashboard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String level;
  const HeaderDashboard({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: kBrownColor,
              borderRadius: BorderRadius.circular(radius8),
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: darkLightTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  level,
                  style: greyTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          CardIcon(
            icon: Icons.notifications_outlined,
            onTap: () {
              Navigator.pushNamed(context, '/notification');
            },
          ),
        ],
      ),
    );
  }
}
