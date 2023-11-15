import 'package:flutter/material.dart';

import '../../../stack_appodeal_flutter.dart';

/// This is the configuration of advertiser text.
class AdAdvertiserConfig with AppodealPlatformArguments {
  final bool visible;
  final int fontSize;
  final Color textColor;
  final Color backgroundColor;

  final int margin;

  AdAdvertiserConfig({
    this.visible = true,
    this.fontSize = 14,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.transparent,
    this.margin = 4,
  });

  @override
  Map<String, dynamic> get toMap => <String, dynamic>{
        'visible': visible,
        'fontSize': fontSize,
        'textColor': textColor.value,
        'backgroundColor': backgroundColor.value,
        'margin': margin,
      };
}
