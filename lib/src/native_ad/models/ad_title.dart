import 'package:flutter/material.dart';
import 'package:stack_appodeal_flutter/src/native_ad/native_color_apis.dart';

import '../../../stack_appodeal_flutter.dart';

/// This is the configuration of title text.
class AdTitleConfig with AppodealPlatformArguments {
  final int fontSize;
  final Color textColor;
  final Color backgroundColor;
  final int margin;

  AdTitleConfig({
    this.fontSize = 16,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    this.margin = 0,
  });

  @override
  Map<String, dynamic> get toMap => <String, dynamic>{
        'fontSize': fontSize,
        'textColor': textColor.toHex(),
        'backgroundColor': backgroundColor.toHex(),
        'margin': margin,
      };
}
