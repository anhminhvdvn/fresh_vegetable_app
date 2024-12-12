import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  String buttonText;
  // Color? borderColor;
  double? buttonHeight;
  double? buttonWidth;

  MyButton({
    this.buttonWidth,
    required this.buttonHeight,
    required this.onTap,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    required this.buttonText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
      height: buttonHeight,
      width: buttonWidth,
      // margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 200),
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.white,
        // border: Border.all(color: borderColor ?? Colors.white),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: textColor,
                  // fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
// GestureDetector(
//   onTap: () {
//     //
//   },
//   child: Center(
//     child: Container(
//       padding:
//           const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
//       decoration: const BoxDecoration(
//         color: Colors.red,
//       ),
//       child: const Text("SIGN UP"),
//     ),
//   ),
// )),