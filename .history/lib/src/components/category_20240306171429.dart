import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/src/models/category_base/category_base.dart';

import 'package:flutter_dynamic_components/src/models/models.dart';

class DynamicCategory extends StatelessWidget {
  const DynamicCategory({
    super.key,
    required this.properties,
  });
  final PropertyBase properties;

  @override
  Widget build(BuildContext context) {
    CategoryBase categoryBase = (properties as CategoryBase);
    return GridView.count(
      crossAxisCount: 4,
      children: [
        ...categoryBase.categories!.map(
          (e) => Text(e.title ?? ''),
        )
      ],
    );
  }
}
