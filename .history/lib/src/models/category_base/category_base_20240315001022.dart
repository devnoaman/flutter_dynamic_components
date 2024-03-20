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
  const factory CategoryBase.build() = _build;
  factory CategoryBase({
    String? property,
    String? image,
    String? padding,
    bool? viewShowMore,
    List<Category>? categories,
    int? borderRadius,
    double? viewSize,
  }) = _CategoryBase;

  factory CategoryBase.fromJson(Map<String, dynamic> json) =>
      _$CategoryBaseFromJson(json);
}
