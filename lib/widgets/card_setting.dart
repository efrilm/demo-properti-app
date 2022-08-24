import 'package:flutter/material.dart';
import '../thema.dart';

class CardSetting extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  const CardSetting({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: kRedColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(radius8),
                  ),
                  child: Icon(
                    icon,
                    color: kWhiteColor,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: darkLightTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: kGreyColor,
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kGreyLightColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
