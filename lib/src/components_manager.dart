library flutter_dynamic_components;

import 'package:flutter/widgets.dart';

import '../flutter_dynamic_components.dart';

class ComponentsManager extends InheritedWidget {
  final List<PropertyBase> properties;
  final ComponentsProperties? componentsProperties;
  final Function(Images slider) onSliderCardClicked;
  const ComponentsManager({
    super.key,
    required this.properties,
    this.componentsProperties,
    required this.onSliderCardClicked,
  }) : super(child: const _ComponentsManager());

  // our ComponentsManager accessor methods
  static ComponentsManager? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ComponentsManager>();
  }

  @override
  bool updateShouldNotify(covariant ComponentsManager oldWidget) {

    return true;
  }
}

class _ComponentsManager extends StatefulWidget {
// var f = jsonEncode(jsonData);
  // final List<PropertyBase> properties;

  const _ComponentsManager({
    super.key,
    // required this.properties,
  });

  @override
  State<_ComponentsManager> createState() => _ComponentsManagerState();
}

class _ComponentsManagerState extends State<_ComponentsManager> {
  late List<PropertyBase> properties = [];

  @override
  void didChangeDependencies() {
    print('depend');
    properties = ComponentsManager.of(context)!.properties;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant _ComponentsManager oldWidget) {
    print('updated');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // var properties = ComponentsManager.of(context)?.properties;
    print('pro: $properties');
    return Builder(builder: ((context) {
      return ListView(
        children: [
          ...properties.map(
            (e) => PropertyWidget(property: e),
          ),
        ],
      );
    }));
  }
}
