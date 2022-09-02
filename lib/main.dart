import 'dart:typed_data';

import 'package:crop_test/crop_sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

late final Uint8List _image;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final bytes = await rootBundle.load('images/image.png');
  _image = bytes.buffer.asUint8List();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CropSample(image: _image),
    );
  }
}
