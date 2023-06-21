import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../env/dimensions.dart';
import 'custom_rich_text.dart';

class CustomInput_eng extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String label;
  final bool isRequired;
  final double? height;

  const CustomInput_eng({
    required this.label,
    required this.controller,
    this.type,
    this.height,
    this.isRequired = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Dimensions.calcH(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichText(
            text: label,
            children: (isRequired)
                ? [
                    const TextSpan(
                      text: " *",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ]
                : [],
          ),
          SizedBox(
            height: Dimensions.calcH(8),
          ),
          Container(
            color: AppColors.kSecondaryColor,
            height: height,
            margin: EdgeInsets.only(
              right: Dimensions.calcW(50),
            ),
            child: TextFormField(
              controller: controller,
              keyboardType: type,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: AppColors.kSecondaryColor,
                filled: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
