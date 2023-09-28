import 'package:evoy_test/resource/app_localization.dart';
import 'package:flutter/material.dart';

extension Localization on String {
  String L() => LocalizationMap.getValue(this);  
}

extension EmptySpace on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}