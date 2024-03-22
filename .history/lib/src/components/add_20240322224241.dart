import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/extenstions.dart';
import 'package:flutter_dynamic_components/src/components/my_cached_image.dart';
import 'package:flutter_dynamic_components/src/models/image.dart';
import 'package:flutter_dynamic_components/src/models/models.dart';

class DynamicAdd extends StatelessWidget {
  const DynamicAdd({
    super.key,
    required this.base,
  });
  final PropertyBase base;

  @override
  Widget build(BuildContext context) {
    var properties = (base as ImageBase);
    var padding = properties.padding.split(',');
    return Padding(
      padding: EdgeInsets.only(
        left: double.tryParse(padding[0]) ?? 0.0,
        top: double.tryParse(padding[1]) ?? 0.0,
        right: double.tryParse(padding[2]) ?? 0.0,
        bottom: double.tryParse(padding[3]) ?? 0.0,
      ),
      child: ClipRRect(
        borderRadius: (properties.borderRadius).bCircular,
        child: MyCachedImage(
          height: context.height * ((base as ImageBase).viewSize),
          image: (base as ImageBase).image,
        ),
      ),
    );
  }
}
