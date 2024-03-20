import 'dart:convert';

import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';

class ImageBase implements PropertyBase {
  final String image;
  final String padding;
  final double viewSize;
  final double borderRadius;
  ImageBase({
    required this.image,
    required this.padding,
    required this.viewSize,
    required this.borderRadius,
  });

  ImageBase copyWith({
    String? image,
    String? padding,
    double? viewSize,
    double? borderRadius,
  }) {
    return ImageBase(
      image: image ?? this.image,
      padding: padding ?? this.padding,
      viewSize: viewSize ?? this.viewSize,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'image': image,
      'padding': padding,
      'viewSize': viewSize,
      'borderRadius': borderRadius,
    };
  }

  factory ImageBase.fromMap(Map<String, dynamic> map) {
    return ImageBase(
      image: map['image'] ?? '',
      padding: map['padding'] ?? '',
      viewSize: map['viewSize']?.toDouble() ?? 0.0,
      borderRadius: map['borderRadius']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageBase.fromJson(String source) =>
      ImageBase.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ImageBase(image: $image, padding: $padding, viewSize: $viewSize, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageBase &&
        other.image == image &&
        other.padding == padding &&
        other.viewSize == viewSize &&
        other.borderRadius == borderRadius;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        padding.hashCode ^
        viewSize.hashCode ^
        borderRadius.hashCode;
  }
}
