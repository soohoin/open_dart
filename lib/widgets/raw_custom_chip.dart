import 'package:flutter/material.dart';

class RawCustomChip extends StatelessWidget {
  const RawCustomChip({
    Key key,
    this.child,
    this.color,
    this.padding,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    Color _defaultColor = Colors.black;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: color ?? _defaultColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: DefaultTextStyle(
        style: TextStyle(
          color: color ?? _defaultColor,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
        child: child,
      ),
    );
  }
}
