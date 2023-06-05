import 'package:flutter/material.dart';
import 'package:flutter_widget/utils/app_constant.dart';

class BtnWidget extends StatelessWidget{

  final String text;
  final Color? textColor;
  final Color? btnColor;
  final VoidCallback? onPressed;

  const BtnWidget({super.key, required this.text, this.textColor, this.btnColor, required this.onPressed});

  @override
  Widget build(BuildContext context){

    return TextButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: MyColor.colorWhite,
          backgroundColor: btnColor ?? MyColor.colorBlack,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        child: Text(text, style: TextStyle(color: textColor ?? MyColor.colorWhite))
    );

  }

}