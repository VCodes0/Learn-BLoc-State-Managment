import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnUtil extends StatelessWidget {
  final void Function()? onPressed;
  final Widget label;
  final Widget icon;
  const BtnUtil({
    super.key,
    this.onPressed,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: CupertinoColors.activeOrange,
      foregroundColor: CupertinoColors.black,
      elevation: 2.5,
      onPressed: onPressed,
      icon: icon,
      label: label,
    );
  }
}
