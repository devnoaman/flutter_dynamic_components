import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:flutter_dynamic_components/src/models/category_base/category_base.dart';
import 'package:flutter_dynamic_components/src/models/image.dart';
import 'package:flutter_dynamic_components/src/models/not_implemented.dart';

abstract class PropertyBase {
  Widget build();
  static fromJson(Map<String, dynamic> pr) {
    return pr['property'] == 'text'
        ? TextBase.fromMap(pr)
        : pr['property'] == 'slider'
            ? SliderBase.fromMap(pr)
            : pr['property'] == 'add'
                ? ImageBase.fromMap(pr)
                : pr['property'] == 'category'
                    ? CategoryBase.fromMap(pr)
                    : NotImplemented();
  }
}
