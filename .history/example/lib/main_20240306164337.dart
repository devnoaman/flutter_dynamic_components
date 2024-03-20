import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MainApp());
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
    print(_localPath);
    readCounter();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  // Future<int>
  readCounter() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    // var li = (data).map((e) {
    //   print(e);
    // });
    for (var i in data) {
      print(i);
      properties.add(PropertyBase.fromJson(i));
    }
    setState(() {});
    // print(data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Builder(builder: (context) {
        return ComponentsManager(
          properties: properties,
          componentsProperties: ComponentsProperties(
            sliderBorderRadius: 12.0,
            componentsPadding: const EdgeInsets.all(0),
            carouselOptions: CarouselOptions(
              height: 195,
              aspectRatio: 1.5 / 3,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
          ),
          onSliderCardClicked: (Images slider) {
            print("Card clicked $slider");
          },

          // componentsProperties: Compnents,

          // [
          //   SliderBase(url: 'url', action: 'action'),
          //   TextBase('بين ماضي من الزمان '),
          //   // PropertyBase.fromJson('json')
          // ],
        );
      })
          // CompnentManager()

          //     mngr.build(
          //   [
          //     {"property": "text", "title": "My dynamic_mobile_app"}
          //   ],
          // ),
          ),
    );
  }
}
