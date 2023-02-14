import 'package:palikaa/export_pages.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';




class LabelWidget extends StatelessWidget {
  final String label;
  const LabelWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:  const EdgeInsets.only(top: 8),
        child: Text.rich(
          TextSpan(
              text: label,
              style: TextStyle(fontSize: 11.sp, color: Color(0xFF6B6B6B).withOpacity(0.8)),
              children: [
                TextSpan(
                    text: '*',
                    style: starLabelTextStyle
                )
              ]
          ),
        )
    );
  }
}


class HeadLabelWidget extends StatelessWidget {
  final String label;
  const HeadLabelWidget({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:  const EdgeInsets.only( bottom: 7),
        child: Text.rich(
          TextSpan(
              text: label,
              style: TextStyle(fontSize: 15.sp, color: Color(0xFF6B6B6B), fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                    text: ':',
                    style: starLabelTextStyle
                )
              ]
          ),
        )
    );
  }
}