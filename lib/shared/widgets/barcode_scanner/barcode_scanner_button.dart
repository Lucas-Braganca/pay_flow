import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class BarcodeScannerButton extends StatelessWidget {
  final VoidCallback onTap;
  const BarcodeScannerButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: AppColors.primary, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.add_box_outlined,
            color: AppColors.background,
          )),
    );
  }
}
