
part of 'category_base.dart';

class Category {
  String? title;
  String? image;
  Category({
    this.title,
    this.image,
  });

  Category copyWith({
    String? title,
    String? image,
  }) {
    return Category(
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      title: map['title'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() => 'Category(title: $title, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category && other.title == title && other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ image.hashCode;
}
