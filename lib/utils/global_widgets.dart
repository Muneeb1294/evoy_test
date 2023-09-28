import 'package:evoy_test/resource/resources.dart';
import 'package:flutter/material.dart';

class GlobalWidgets{
  static Widget fieldContainer(
      {required FocusNode focusNode, required Widget child, GlobalKey<FormState>? key}) {
    return Form(
      key: key,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration:  BoxDecoration(
          border: Border.all(color: R.colors.grey3),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: child,
      ),
    );
  }
}