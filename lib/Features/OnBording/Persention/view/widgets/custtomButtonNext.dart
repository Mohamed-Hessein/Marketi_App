import 'package:flutter/material.dart';
import 'package:marketia/core/theme/constants.dart';
import 'package:marketia/core/theme/textstyles/styles.dart';

class Custtombuttonnext extends StatelessWidget {
  Custtombuttonnext({super.key, required this.onTap, required this.text});
  Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Container(
          height: 48,
          width: 347,
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Constants.buttonColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(text, style: AppTextSyles.textpopns18wcolor),
          ),
        ),
      ),
    );
  }
}
