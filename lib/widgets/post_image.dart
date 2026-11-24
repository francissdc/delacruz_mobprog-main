import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key, required this.assetPath});

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            alignment: Alignment.center,
            child: const Icon(
              Icons.broken_image_outlined,
              size: 36,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}