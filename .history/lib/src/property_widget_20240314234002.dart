import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:flutter_dynamic_components/src/components/add.dart';
import 'package:flutter_dynamic_components/src/components/category.dart';
import 'package:flutter_dynamic_components/src/components/slider.dart';
import 'package:flutter_dynamic_components/src/components/text.dart';
import 'package:flutter_dynamic_components/src/models/category_base/category_base.dart';
import 'package:flutter_dynamic_components/src/models/image.dart';

import 'package:flutter_dynamic_components/src/models/models.dart';

class PropertyWidget extends StatelessWidget {
  /// Creates a widget that delegates its build to a callback.
  const PropertyWidget({
    super.key,
    // required this.builder,
    required this.property,
  });

  // final WidgetBuilder builder;
  final PropertyBase property;

  @override
  Widget build(BuildContext context) {
    var padding =
        ComponentsManager.of(context)!.componentsProperties?.componentsPadding;
    return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: switch (property.runtimeType) {
          TextBase _ => DynamicText(property: property),
          SliderBase _ => DynamicSlider(property: property),
          ImageBase _ => DynamicAdd(base: property),
          CategoryBase _ => DynamicCategory(properties: property),
          _ => const SizedBox()
        }

        // (property is TextBase)
        //     ? DynamicText(property: property)
        //     : (property is SliderBase)
        //         ? DynamicSlider(property: property)
        //         : (property is ImageBase)
        //             ? DynamicAdd(base: property)
        //             : (property is CategoryBase)
        //                 ? DynamicCategory(
        //                     properties: property,
        //                   )
        //                 : const SizedBox(),
        );
  }
}
