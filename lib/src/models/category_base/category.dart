// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'category.freezed.dart';
// part 'category.g.dart';

// @freezed
// class Category with _$Category {
//   factory Category({
//     String? title,
//     String? image,
//   }) = _Category;

//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);
// }

// import 'dart:convert';
// import 'dart:core';
part of 'category_base.dart';

class Category {
  String? title;
  String? image;
  Category({
    this.title,
    this.image,
  });

  Category copyWith({
    String? title,
    String? image,
  }) {
    return Category(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      title: map['title'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() => 'Category(title: $title, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category && other.title == title && other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode;
}
