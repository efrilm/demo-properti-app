import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class UnitItem extends StatelessWidget {
  final String text;
  final int status;
  const UnitItem({
    Key? key,
    required this.text,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kGreyColor;
        case 1:
          return kRedColor.withOpacity(0.4);
        case 2:
          return kRedColor.withOpacity(0.4);
        case 3:
          return kRedColor;
        default:
          return kGreyColor;
      }
    }

    border() {
      switch (status) {
        case 0:
          return kGreyColor;
        case 1:
          return kRedColor.withOpacity(0.0);
        case 2:
          return kRedColor;
        case 3:
          return kRedColor;
        default:
          return kGreyColor;
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: border(),
        ),
      ),
      child: Text(text),
    );
  }
}
