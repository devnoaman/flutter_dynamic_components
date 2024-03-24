import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/extenstions.dart';
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
    var componentsProperties =
        ComponentsManager.of(context)!.componentsProperties;
    var carouselOptions =
        ComponentsManager.of(context)!.componentsProperties!.carouselOptions;
    return CarouselSlider(
      options: carouselOptions ?? CarouselOptions(height: 1.0),
      items: (property as SliderBase).images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () =>
                    ComponentsManager.of(context)!.onSliderCardClicked.call(i),
                child: MyCachedImage(
                  image: i.url,
                  width: context.width,
                      borderRadius: componentsProperties!.sliderBorderRadius == null
                    ? BorderRadius.circular(12)
                    : BorderRadius.circular(
                        componentsProperties.sliderBorderRadius as double),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
