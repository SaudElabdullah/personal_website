import 'package:flutter/material.dart';
import 'package:personal_website/screens/website.dart';
import 'package:personal_website/utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Personal website',
              home: Scaffold(
                body: SafeArea(
                  child: Website(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
