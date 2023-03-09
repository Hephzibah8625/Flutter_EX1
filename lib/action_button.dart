import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);
  final VoidCallback onPressed;
  final Icon icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: iconColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
