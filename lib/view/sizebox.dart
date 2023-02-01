import 'package:flutter/material.dart';

class SizeBox extends SizedBox {
  const SizeBox({
  super.key,
  double super.width = _initWidth,
  double super.height = _initHeight,
  });

  const SizeBox.width([double value = _initWidth, Key? key])
      : super(width: value, key: key);
  const SizeBox.height([double value = _initHeight, Key? key])
      : super(height: value, key: key);

  static const double _initWidth = 0;
  static const double _initHeight = 0;
}