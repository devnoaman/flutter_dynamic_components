import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyCachedImage extends StatelessWidget {
  const MyCachedImage({
    super.key,
    required this.image,
    this.height,
  });
  final String image;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      errorWidget: (context, url, error) => const Center(
        child: Icon(Icons.error),
      ),
      imageUrl: image,
      fit: BoxFit.cover,
    );
  }
}
