import 'package:flutter/material.dart';
import 'package:getx_clean_architecture_v2/widgets/app_text/app_text.dart';

import '../../config/themes/app_colors.dart';
import '../../utils/resources/app_size.dart';


class AppCommonButton extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? color;
  final TextStyle? style;
  final OutlinedBorder? shape;
  const AppCommonButton({
    super.key,
    this.height,
    this.width,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.borderColor,
    this.color,
    this.shape,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 0.0,
        maxHeight: AppSize.height(height: 7.0),
      ),
      child: SizedBox(
        width: width ?? double.maxFinite,
        height: height ?? AppSize.height(height: 6.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.primary,
              shape: shape ??
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
              side: BorderSide(color: borderColor ?? AppColors.primary)),
          child: AppText(
            title: title,
            style: style ??
                Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: color ?? AppColors.white),
          ),
        ),
      ),
    );
  }
}
