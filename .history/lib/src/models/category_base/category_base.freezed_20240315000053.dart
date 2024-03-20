// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryBase _$CategoryBaseFromJson(Map<String, dynamic> json) {
  return _CategoryBase.fromJson(json);
}

/// @nodoc
mixin _$CategoryBase {
  String? get property => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get padding => throw _privateConstructorUsedError;
  bool? get viewShowMore => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  int? get borderRadius => throw _privateConstructorUsedError;
  double? get viewSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryBaseCopyWith<CategoryBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBaseCopyWith<$Res> {
  factory $CategoryBaseCopyWith(
          CategoryBase value, $Res Function(CategoryBase) then) =
      _$CategoryBaseCopyWithImpl<$Res, CategoryBase>;
  @useResult
  $Res call(
      {String? property,
      String? image,
      String? padding,
      bool? viewShowMore,
      List<Category>? categories,
      int? borderRadius,
      double? viewSize});
}

/// @nodoc
class _$CategoryBaseCopyWithImpl<$Res, $Val extends CategoryBase>
    implements $CategoryBaseCopyWith<$Res> {
  _$CategoryBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = freezed,
    Object? image = freezed,
    Object? padding = freezed,
    Object? viewShowMore = freezed,
    Object? categories = freezed,
    Object? borderRadius = freezed,
    Object? viewSize = freezed,
  }) {
    return _then(_value.copyWith(
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as String?,
      viewShowMore: freezed == viewShowMore
          ? _value.viewShowMore
          : viewShowMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      viewSize: freezed == viewSize
          ? _value.viewSize
          : viewSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryBaseImplCopyWith<$Res>
    implements $CategoryBaseCopyWith<$Res> {
  factory _$$CategoryBaseImplCopyWith(
          _$CategoryBaseImpl value, $Res Function(_$CategoryBaseImpl) then) =
      __$$CategoryBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? property,
      String? image,
      String? padding,
      bool? viewShowMore,
      List<Category>? categories,
      int? borderRadius,
      double? viewSize});
}

/// @nodoc
class __$$CategoryBaseImplCopyWithImpl<$Res>
    extends _$CategoryBaseCopyWithImpl<$Res, _$CategoryBaseImpl>
    implements _$$CategoryBaseImplCopyWith<$Res> {
  __$$CategoryBaseImplCopyWithImpl(
      _$CategoryBaseImpl _value, $Res Function(_$CategoryBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = freezed,
    Object? image = freezed,
    Object? padding = freezed,
    Object? viewShowMore = freezed,
    Object? categories = freezed,
    Object? borderRadius = freezed,
    Object? viewSize = freezed,
  }) {
    return _then(_$CategoryBaseImpl(
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as String?,
      viewShowMore: freezed == viewShowMore
          ? _value.viewShowMore
          : viewShowMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      borderRadius: freezed == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      viewSize: freezed == viewSize
          ? _value.viewSize
          : viewSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryBaseImpl extends _CategoryBase {
  _$CategoryBaseImpl(
      {this.property,
      this.image,
      this.padding,
      this.viewShowMore,
      final List<Category>? categories,
      this.borderRadius,
      this.viewSize})
      : _categories = categories,
        super._();

  factory _$CategoryBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryBaseImplFromJson(json);

  @override
  final String? property;
  @override
  final String? image;
  @override
  final String? padding;
  @override
  final bool? viewShowMore;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? borderRadius;
  @override
  final double? viewSize;

  @override
  String toString() {
    return 'CategoryBase(property: $property, image: $image, padding: $padding, viewShowMore: $viewShowMore, categories: $categories, borderRadius: $borderRadius, viewSize: $viewSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryBaseImpl &&
            (identical(other.property, property) ||
                other.property == property) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.viewShowMore, viewShowMore) ||
                other.viewShowMore == viewShowMore) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.viewSize, viewSize) ||
                other.viewSize == viewSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      property,
      image,
      padding,
      viewShowMore,
      const DeepCollectionEquality().hash(_categories),
      borderRadius,
      viewSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryBaseImplCopyWith<_$CategoryBaseImpl> get copyWith =>
      __$$CategoryBaseImplCopyWithImpl<_$CategoryBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryBaseImplToJson(
      this,
    );
  }
}

abstract class _CategoryBase extends CategoryBase implements PropertyBase {
  factory _CategoryBase(
      {final String? property,
      final String? image,
      final String? padding,
      final bool? viewShowMore,
      final List<Category>? categories,
      final int? borderRadius,
      final double? viewSize}) = _$CategoryBaseImpl;
  _CategoryBase._() : super._();

  factory _CategoryBase.fromJson(Map<String, dynamic> json) =
      _$CategoryBaseImpl.fromJson;

  @override
  String? get property;
  @override
  String? get image;
  @override
  String? get padding;
  @override
  bool? get viewShowMore;
  @override
  List<Category>? get categories;
  @override
  int? get borderRadius;
  @override
  double? get viewSize;
  @override
  @JsonKey(ignore: true)
  _$$CategoryBaseImplCopyWith<_$CategoryBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
