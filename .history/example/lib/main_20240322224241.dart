import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late List<PropertyBase> properties;
  @override
  void initState() {
    properties = [];
    super.initState();
    readCounter();
  }

  // Future<int>
  readCounter() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    // var li = (data).map((e) {
    //   print(e);
    // });
    for (var i in data) {
      properties.add(PropertyBase.fromJson(i));
    }
    setState(() {});
    // print(data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return ComponentsManager(
              properties: properties,
              componentsProperties: ComponentsProperties(
                categoryProperties: const CategoryProperties(
                    categoryPadding: EdgeInsets.all(12)),
                sliderBorderRadius: 12.0,
                componentsPadding: const EdgeInsets.all(0),
                carouselOptions: CarouselOptions(
                  height: 195,
                  aspectRatio: 1 / 2,
                  enlargeCenterPage: true,
                  autoPlay: true,
                ),
              ),
              onSliderCardClicked: (Images slider) {},
            );
          },
        ),
      ),
    );
  }
}
