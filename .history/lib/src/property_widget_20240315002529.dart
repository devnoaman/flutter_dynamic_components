import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';

import 'package:flutter_dynamic_components/src/models/category_base/category_base.dart';
import 'package:flutter_dynamic_components/src/models/image.dart';

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
    return Padding(padding: padding ?? EdgeInsets.zero, child: property.build()

        // (property is TextBase)
        //     ? (property as TextBase).build() //DynamicText(property: property)
        //     : (property is SliderBase)
        //         ? (property as SliderBase)
        //             .build() //DynamicSlider(property: property)
        //         : (property is ImageBase)
        //             ? (property as ImageBase).build() //DynamicAdd(base: property)
        //             : (property is CategoryBase)
        //                 ? (property as CategoryBase).build()

        //                 // DynamicCategory(
        //                 //     properties: property,
        //                 //   )
        //                 : const SizedBox(),
        );
  }
}
