import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardPickImage extends StatelessWidget {
  final Function() onTap;
  const CardPickImage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 40,
          left: defaultMargin,
          right: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius8),
          border: Border.all(
            width: 4,
            color: kRedColor,
          ),
        ),
        child: Icon(
          Icons.add_a_photo_outlined,
          color: kRedColor,
          size: 32,
        ),
      ),
    );
  }
}
