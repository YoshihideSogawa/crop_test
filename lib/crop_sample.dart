import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';

class CropSample extends StatelessWidget {
  const CropSample({
    Key? key,
    required this.image,
  }) : super(key: key);

  final Uint8List image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Crop(
        image: image,
        onCropped: (image) {},
      ),
    );
  }
}
