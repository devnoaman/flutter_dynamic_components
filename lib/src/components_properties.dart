import 'dart:ffi';

import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'category_properties.dart';

class ComponentsProperties {


  const ComponentsProperties( {
    this.sliderBorderRadius,
    this.addBorderRadius,
    this.carouselOptions,
    this.componentsPadding,
    this.categoryChildAspectRatio,
    this.categoryProperties,
  });





  // carousel properties
  final CarouselOptions? carouselOptions;
  // slider properties
  final num? sliderBorderRadius;
  // addSection property
  final Double? addBorderRadius;
  // aspect ratio for the category child
  final double? categoryChildAspectRatio;
  // the padding around each component
  final EdgeInsetsGeometry? componentsPadding ;
  // the properties of the category
  final CategoryProperties? categoryProperties ;

}
