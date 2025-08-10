import 'package:flutter/material.dart';
import 'package:marketia/core/constants.dart';
import 'package:marketia/core/textstyles/styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.assetImage,
    required this.hintText,
    required this.wigeth,
    required this.height,
    required this.labelText,
  });
  final AssetImage assetImage;
  final String hintText;
  final String labelText;
  final double wigeth;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Container(
            width: wigeth,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(image: assetImage),
            ),
          ),
          hintText: hintText,
          hintStyle: AppTextSyles.textpopns12Color,
          focusedBorder: OutlineInputBorder(
            gapPadding: 2,
            borderSide: BorderSide(color: Constants.Textfeildborder, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 2,
            borderSide: BorderSide(color: Constants.Textfeildborder, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class CustomTextPhoneFeild extends StatelessWidget {
  const CustomTextPhoneFeild({
    super.key,
    required this.assetImage,
    required this.hintText,
    required this.wigeth,
    required this.height,
    required this.SecassetImage,
    required this.labelText,
  });
  final AssetImage assetImage;
  final AssetImage SecassetImage;
  final String hintText;
  final double wigeth;
  final String labelText;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: wigeth,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(image: assetImage),
                ),
              ),
              SizedBox(width: 3),
              Container(
                width: wigeth,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(image: SecassetImage),
                ),
              ),
            ],
          ),
          hintText: hintText,
          hintStyle: AppTextSyles.textpopns12BlueforgotColor,
          focusedBorder: OutlineInputBorder(
            gapPadding: 2,
            borderSide: BorderSide(color: Constants.Textfeildborder, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            gapPadding: 2,
            borderSide: BorderSide(color: Constants.Textfeildborder, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
