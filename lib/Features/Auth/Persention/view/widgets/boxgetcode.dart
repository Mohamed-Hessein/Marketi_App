import 'package:flutter/material.dart';
import 'package:marketia/core/theme/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pincodefeilds extends StatelessWidget {
  const Pincodefeilds({super.key, this.controller});
  final controller;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      appContext: context,
      enableActiveFill: true,
      pinTheme: PinTheme(
        activeFillColor: Colors.transparent,
        selectedColor: Constants.Textfeildborder,
        disabledColor: Constants.Textfeildborder,
        inactiveColor: Constants.Textfeildborder,
        activeColor: Constants.Textfeildborder,
        selectedFillColor: Colors.transparent,
        inactiveFillColor: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        shape: PinCodeFieldShape.box,
        fieldHeight: 64,
        fieldWidth: 64,
      ),

      cursorColor: Constants.Textfeildborder,
      length: 6,

      animationType: AnimationType.fade,

      obscureText: false,
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,

      onChanged: (value) {
        print(value);
      },
      onCompleted: (value) {
        print(value);
      },
    );
  }
}
