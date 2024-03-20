// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_dynamic_components/src/components/category.dart';
// import 'package:flutter_dynamic_components/src/models/models.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'category.dart';

// part 'category_base.freezed.dart';
// part 'category_base.g.dart';

// @freezed
// class CategoryBase with _$CategoryBase {
//   const CategoryBase._();
//   @Implements<PropertyBase>()
//   // build() => DynamicCategory(properties: this as PropertyBase);
//   factory CategoryBase({
//     String? property,
//     String? image,
//     String? padding,
//     bool? viewShowMore,
//     List<Category>? categories,
//     int? borderRadius,
//     double? viewSize,
//     // @JsonKey(ignore: true,name: ) Widget Function()? build,
//   }) = _CategoryBase;

//   b() {
//     return DynamicCategory(properties: _CategoryBase as PropertyBase);
//   }

//   factory CategoryBase.fromJson(Map<String, dynamic> json) =>
//       _$CategoryBaseFromJson(json);
// }
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:flutter_dynamic_components/src/components/category.dart';
// import 'package:flutter_dynamic_components/src/models/category_base/category.dart';

part 'category.dart';

class CategoryBase implements PropertyBase {
  final String? property;
  final String? image;
  final String? padding;
  final bool? viewShowMore;
  final List<Category>? categories;
  final int? borderRadius;
  final double? viewSize;
  CategoryBase({
    this.property,
    this.image,
    this.padding,
    this.viewShowMore,
    this.categories,
    this.borderRadius,
    this.viewSize,
  });
  @override
  Widget build() {
    return DynamicCategory(properties: this as PropertyBase);
  }

  CategoryBase copyWith({
    String? property,
    String? image,
    String? padding,
    bool? viewShowMore,
    List<Category>? categories,
    int? borderRadius,
    double? viewSize,
  }) {
    return CategoryBase(
      property: property ?? this.property,
      image: image ?? this.image,
      padding: padding ?? this.padding,
      viewShowMore: viewShowMore ?? this.viewShowMore,
      categories: categories ?? this.categories,
      borderRadius: borderRadius ?? this.borderRadius,
      viewSize: viewSize ?? this.viewSize,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'property': property,
      'image': image,
      'padding': padding,
      'viewShowMore': viewShowMore,
      'categories': categories?.map((x) => x).toList(),
      'borderRadius': borderRadius,
      'viewSize': viewSize,
    };
  }

  factory CategoryBase.fromMap(Map<String, dynamic> map) {
    return CategoryBase(
      property: map['property'],
      image: map['image'],
      padding: map['padding'],
      viewShowMore: map['viewShowMore'],
      categories: map['categories'] != null
          ? List<Category>.from(
              map['categories']?.map((x) => Category.fromMap(map)))
          : null,
      borderRadius: map['borderRadius']?.toInt(),
      viewSize: map['viewSize']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryBase.fromJson(String source) =>
      CategoryBase.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryBase(property: $property, image: $image, padding: $padding, viewShowMore: $viewShowMore, categories: $categories, borderRadius: $borderRadius, viewSize: $viewSize)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryBase &&
        other.property == property &&
        other.image == image &&
        other.padding == padding &&
        other.viewShowMore == viewShowMore &&
        listEquals(other.categories, categories) &&
        other.borderRadius == borderRadius &&
        other.viewSize == viewSize;
  }

  @override
  int get hashCode {
    return property.hashCode ^
        image.hashCode ^
        padding.hashCode ^
        viewShowMore.hashCode ^
        categories.hashCode ^
        borderRadius.hashCode ^
        viewSize.hashCode;
  }
}
