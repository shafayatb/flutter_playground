import 'package:flutter/material.dart';

import 'animation_widgets.dart';

class AnimationExample extends StatelessWidget {
  const AnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: CustomAnimatedContainer())),
    );
  }
}
