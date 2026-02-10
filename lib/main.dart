import 'package:flutter/material.dart';

void main() async {
  runApp(AnimationExample());
}

class AnimationExample extends StatelessWidget {
  const AnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: AnimationContainer())),
    );
  }
}

class AnimationContainer extends StatefulWidget {
  const AnimationContainer({super.key});

  @override
  State<AnimationContainer> createState() => _AnimationContainerState();
}

class _AnimationContainerState extends State<AnimationContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: 50,
      end: 200,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.repeat(reverse: true);
        /*if(_controller.status == AnimationStatus.completed){
          _controller.reverse();
        } else {
          _controller.forward();
        }*/
      },
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, widget) {
          return Container(
            height: _animation.value,
            width: _animation.value,
            color: Colors.greenAccent,
          );
        },
      ),
    );
  }
}
