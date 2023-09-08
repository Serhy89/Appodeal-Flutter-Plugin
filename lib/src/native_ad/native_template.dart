import 'package:stack_appodeal_flutter/src/native_ad/native_ad.dart';
import 'package:stack_appodeal_flutter/src/native_ad/options/native_template_options.dart';

class NativeTemplate extends NativeAd {
  final TemplateType templateType;
  final NativeTemplateOptions? options;

  NativeTemplate(
      {required this.templateType,
      this.options,
      AdChoicePosition? adChoicePosition})
      : super(adChoicePosition: adChoicePosition);
}

enum TemplateType {
  CONTENT_STREAM,
  APP_WALL,
  NEWS_FEED,
}
