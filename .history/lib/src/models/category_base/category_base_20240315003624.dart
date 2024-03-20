import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dynamic_components/src/components/category.dart';
import 'package:flutter_dynamic_components/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'category_base.freezed.dart';
part 'category_base.g.dart';

@freezed
class CategoryBase with _$CategoryBase {
  const CategoryBase._();
  @Implements<PropertyBase>()
  // build() => DynamicCategory(properties: this as PropertyBase);
  factory CategoryBase({
    String? property,
    String? image,
    String? padding,
    bool? viewShowMore,
    List<Category>? categories,
    int? borderRadius,
    double? viewSize,
    @JsonKey(ignore: true) Widget Function()? build,
  }) = _CategoryBase;

  build() {
    return DynamicCategory(properties: this as PropertyBase);
  }

  factory CategoryBase.fromJson(Map<String, dynamic> json) =>
      _$CategoryBaseFromJson(json);
}
