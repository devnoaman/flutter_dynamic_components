import 'package:flutter/widgets.dart';

import 'package:flutter_dynamic_components/src/models/models.dart';

class DynamicText extends StatelessWidget {
  final PropertyBase property;
  const DynamicText({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    var properties = (property as TextBase);
    var padding = properties.padding.split(',');
    return Padding(
      padding: EdgeInsets.only(
        left: double.tryParse(padding[0]) ?? 0.0,
        top: double.tryParse(padding[1]) ?? 0.0,
        right: double.tryParse(padding[2]) ?? 0.0,
        bottom: double.tryParse(padding[3]) ?? 0.0,
      ),
      child: Text(properties.data),
    );
  }
}
