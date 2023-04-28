import 'package:flutter/material.dart';

class GhostIconButton extends StatelessWidget {
  const GhostIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints(),
      padding: EdgeInsets.zero,
      icon: icon,
      onPressed: onPressed,
    );
  }
}
