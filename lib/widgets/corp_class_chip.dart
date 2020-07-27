import 'package:flutter/material.dart';
import 'package:open_dart/models/models.dart';
import 'package:open_dart/widgets/raw_custom_chip.dart';

class CorpClassChip extends StatelessWidget {
  CorpClassChip({@required this.corpClass});
  final CorpClass corpClass;

  Color get _currentColor {
    switch (corpClass) {
      case CorpClass.Y:
        return Color.fromRGBO(252, 104, 104, 1);
      case CorpClass.K:
        return Color.fromRGBO(146, 140, 255, 1);
      case CorpClass.N:
        return Color.fromRGBO(86, 177, 245, 1);
      case CorpClass.E:
        return Color.fromRGBO(137, 190, 40, 1);
      default:
        throw Exception('CorpClass is not defined');
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawCustomChip(
      color: _currentColor,
      child: Text(corpClass.enumToString),
    );
  }
}
