import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_components/src/components/slider.dart';

import 'package:flutter_dynamic_components/src/models/models.dart';

class Images {
  final String url;
  final String action;
  Images({
    required this.url,
    required this.action,
  });

  Images copyWith({
    String? url,
    String? action,
  }) {
    return Images(
      url: url ?? this.url,
      action: action ?? this.action,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'action': action,
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      url: map['url'] ?? '',
      action: map['action'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) => Images.fromMap(json.decode(source));

  @override
  String toString() => 'Images(url: $url, action: $action)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Images && other.url == url && other.action == action;
  }

  @override
  int get hashCode => url.hashCode ^ action.hashCode;
}

class SliderBase implements PropertyBase {
  // final String url;
  // final String action;
  final List<Images> images;
  SliderBase({
    required this.images,
  });

  SliderBase copyWith({
    List<Images>? images,
  }) {
    return SliderBase(
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'images': images.map((x) => x.toMap()).toList(),
    };
  }

  factory SliderBase.fromMap(Map<String, dynamic> map) {
    return SliderBase(
      images: List<Images>.from(map['images']?.map((x) => Images.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory SliderBase.fromJson(String source) =>
      SliderBase.fromMap(json.decode(source));

  @override
  String toString() => 'SliderBase(images: $images)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SliderBase && listEquals(other.images, images);
  }

  @override
  int get hashCode => images.hashCode;
  @override
  Widget build() {
    return DynamicSlider(
      property: this as PropertyBase,
    );
  }
}
