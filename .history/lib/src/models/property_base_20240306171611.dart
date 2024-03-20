import 'package:flutter_dynamic_components/flutter_dynamic_components.dart';
import 'package:flutter_dynamic_components/src/models/category_base/category.dart';
import 'package:flutter_dynamic_components/src/models/image.dart';

abstract class PropertyBase {
  static fromJson(Map<String, dynamic> pr) {
    print(pr);
    return pr['property'] == 'text'
/**TODO USE FREEZED GENERATOR INSTEAD */ ? TextBase.fromMap(pr)
/**TODO USE FREEZED GENERATOR INSTEAD */ : pr['property'] == 'slider'
/**TODO USE FREEZED GENERATOR INSTEAD */ ? SliderBase.fromMap(pr)
/**TODO USE FREEZED GENERATOR INSTEAD */ : pr['property'] == 'add'
/**TODO USE FREEZED GENERATOR INSTEAD */ ? ImageBase.fromMap(pr)
/**TODO USE FREEZED GENERATOR INSTEAD */ : pr['property'] == 'category'
/** ALREADY USING FREEZED GENERATOR   */ ? Category.fromJson(pr)
/**                                   */ : null;
  }
}
