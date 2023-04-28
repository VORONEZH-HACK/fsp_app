import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  const FlatButton({
    Key? key,
    this.title,
    required this.onPressed,
    this.titleColor,
    this.titleStyle,
    required this.borderWidth,
    this.padding = const EdgeInsets.only(right: 16.0),
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.overlayColor,
    this.splashFactory,
    this.titleWidget,
  }) : super(key: key);

  final String? title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color? titleColor;
  final Color? overlayColor;
  final TextStyle? titleStyle;
  final double borderWidth;
  final EdgeInsets padding;
  final Widget? titleWidget;
  final InteractiveInkFeatureFactory? splashFactory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.zero,
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => overlayColor,
          ),
          minimumSize: MaterialStateProperty.resolveWith(
            (states) => Size.zero,
          ),
          splashFactory: splashFactory,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          side: MaterialStateProperty.resolveWith(
            (states) => BorderSide(
              width: borderWidth,
              color: borderColor,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => backgroundColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 6.0),
          child: titleWidget ??
              Text(
                title ?? '',
                style: titleStyle?.copyWith(
                  color: titleColor,
                ),
              ),
        ),
      ),
    );
  }
}
