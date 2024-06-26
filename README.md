# Flutter Dynamic Components

The Flutter Dynamic Components package enables the creation of dynamic Flutter screens based on backend-provided JSON configurations. With this powerful tool, developers can define UI elements through JSON, including sliders, text blocks, images, and category views. This approach greatly accelerates UI development and iteration, allowing for quick updates without needing app redeployment.

## Features

- **Dynamic UI Creation:** Effortlessly build screens from JSON configurations.
- **Support for Various Components:** Includes support for sliders, text sections, buttons, and category views directly from JSON.
- **Flexible Component Properties:** Customize padding, border radius, and other properties via JSON.
- **Efficient Image Loading:** Utilizes `cached_network_image` for optimized image loading and caching.
- **Enhanced Sliders:** Leverages `carousel_slider` for flexible and responsive image sliders.
- **Easy JSON Serialization:** Supports `json_annotation` for straightforward JSON serialization, with `build_runner` and `json_serializable` aiding in code generation.

## Installation

To integrate the Flutter Dynamic Components package into your project, add it to your `pubspec.yaml` file along with its dependencies:

```yaml
dependencies:
  flutter_dynamic_components: { version }
```

## Usage

Begin by defining your screen's UI components and their properties in a JSON configuration according to the predefined schema.

Here's a basic usage example to help you get started:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';


class YourDynamicScreen extends StatelessWidget {
  final List<PropertyBase> properties = // a dart representation of the json properties from the server

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) {
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
              onSliderCardClicked: (image) {
                print("Card clicked: $image");
              },
            );
          },
        ),
      ),
    );
  }
}
```

### Maintained Packages

- **Image Caching:** `cached_network_image`
- **Carousel Slider:** `carousel_slider`
- **Model Serialization:** `freezed_annotation`, `json_annotation`
- **Code Generation:** `build_runner`, `freezed`, `json_serializable` (under `dev_dependencies`)

## Contributing

We warmly welcome contributions! Feel free to submit pull requests or create issues for bugs, features, or suggestions.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
