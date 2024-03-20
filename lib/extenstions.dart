import 'package:flutter/material.dart';

extension Rad on double {
  Radius get cRad => Radius.circular(this);
  EdgeInsets get cEdgeInsets => EdgeInsets.all(this);
  BorderRadius get circular => BorderRadius.circular(this);

  BorderRadius get bCircular => BorderRadius.circular(this);
}

extension LayoutSize on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  Size get size => MediaQuery.of(this).size;
}

extension Space on num {
  SizedBox get wSpace => SizedBox(
        width: double.tryParse(toString()),
      );
  SizedBox get hSpace => SizedBox(
        height: double.tryParse(toString()),
      );
}

extension Theming on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension NumDurationExtensions on num {
  Duration get microseconds => Duration(microseconds: round());
  Duration get ms => (this * 1000).microseconds;
  Duration get milliseconds => (this * 1000).microseconds;
  Duration get seconds => (this * 1000 * 1000).microseconds;
  Duration get minutes => (this * 1000 * 1000 * 60).microseconds;
  Duration get hours => (this * 1000 * 1000 * 60 * 60).microseconds;
  Duration get days => (this * 1000 * 1000 * 60 * 60 * 24).microseconds;
}
