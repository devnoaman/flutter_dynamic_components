import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/src/components/my_cached_image.dart';

import '../../flutter_dynamic_components.dart';

class DynamicSlider extends StatelessWidget {
  final PropertyBase property;
  const DynamicSlider({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    var p = ComponentsManager.of(context)!.componentsProperties;
    var prop =
        ComponentsManager.of(context)!.componentsProperties!.carouselOptions;
    return CarouselSlider(
      options: prop ?? CarouselOptions(height: 200.0),
      items: (property as SliderBase).images.map((i) {
        // var img = i
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () =>
                    ComponentsManager.of(context)!.onSliderCardClicked.call(i),
                child: ClipRRect(
                  borderRadius: p!.sliderBorderRadius == null
                      ? BorderRadius.zero
                      : BorderRadius.circular(p.sliderBorderRadius as double),
                  child: MyCachedImage(
                    image: i.url,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
