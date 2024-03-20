import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_dynamic_components/src/components/text.dart';
import 'package:flutter_dynamic_components/src/models/models.dart';

class TextBase implements PropertyBase {
  final String data;
  final String padding;
  TextBase(
    this.data,
    this.padding,
  );

  TextBase copyWith({
    String? data,
    String? padding,
  }) {
    return TextBase(
      data ?? this.data,
      padding ?? this.padding,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data,
      'padding': padding,
    };
  }

  factory TextBase.fromMap(Map<String, dynamic> map) {
    return TextBase(
      map['title'] ?? '',
      map['padding'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TextBase.fromJson(String source) =>
      TextBase.fromMap(json.decode(source));

  @override
  String toString() => 'TextBase(data: $data, padding: $padding)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TextBase && other.data == data && other.padding == padding;
  }

  @override
  int get hashCode => data.hashCode ^ padding.hashCode;
}
