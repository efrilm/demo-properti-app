import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardProfile extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;

  const CardProfile({
    Key? key,
    required this.name,
    required this.email,
    required this.imageUrl,
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
            width: 80,
            height: 70,
            decoration: BoxDecoration(
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
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: darkLightTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                email,
                style: greyTextStyle.copyWith(
      
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
