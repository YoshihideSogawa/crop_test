import 'dart:io';

import 'package:crop_test/crop_sample.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Crop', (tester) async {
    final image = File('images/image.png').readAsBytesSync();
    await tester.pumpWidget(
      MaterialApp(
        home: CropSample(image: image),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(Crop), findsOneWidget);
  });
}
