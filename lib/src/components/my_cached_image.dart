import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyCachedImage extends StatelessWidget {
  const MyCachedImage({
    super.key,
    required this.image,
    this.height, 
    this.width, 
    
    
     this.borderRadius,
  });
  final String image;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect( 


      borderRadius: borderRadius??BorderRadius.zero,
      child: CachedNetworkImage(
        height: height,
        width: width,
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error),
        ),
        imageUrl: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
