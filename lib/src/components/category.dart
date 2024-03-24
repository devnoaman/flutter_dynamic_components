import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/extenstions.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:flutter_dynamic_components/src/components/my_cached_image.dart';
import 'package:flutter_dynamic_components/src/models/category_base/category_base.dart';


// ! not yet completed
class DynamicCategory extends StatelessWidget {
  const DynamicCategory({
    super.key,
    required this.properties,
  });
  final PropertyBase properties;

  @override
  Widget build(BuildContext context) {
    CategoryBase categoryBase = (properties as CategoryBase);
        var categoryProperties =
        ComponentsManager.of(context)!.componentsProperties!.categoryProperties;
    return Padding(

      padding: categoryProperties!.categoryPadding??EdgeInsets.zero,
      child: SizedBox(
        width: context.width,
        height: context.height * 0.5,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          childAspectRatio: 1 / 1.3,
          children: [
            ...categoryBase.categories!.map(
              (e) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyCachedImage(
                     image: e.image!,
                     borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Text(e.title ?? '',maxLines: 2,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
