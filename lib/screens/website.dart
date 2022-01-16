import 'package:flutter/material.dart';

class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [

          ],
        ),
      ),
    );
  }
}
