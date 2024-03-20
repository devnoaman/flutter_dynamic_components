import 'dart:ffi';

import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ComponentsProperties {
  // carousel properties
  CarouselOptions? carouselOptions;
  // slider properties
  final num? sliderBorderRadius;
  // addSection property
  final Double? addBorderRadius;
  EdgeInsetsGeometry? componentsPadding = EdgeInsets.zero;
  ComponentsProperties({
    this.sliderBorderRadius,
    this.addBorderRadius,
    this.carouselOptions,
    this.componentsPadding,
  });
}
