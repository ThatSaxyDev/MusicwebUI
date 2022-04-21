import 'package:flutter/material.dart';

class AnimatedContaine extends StatefulWidget {
  const AnimatedContaine({Key? key}) : super(key: key);

  @override
  State<AnimatedContaine> createState() => _AnimatedContaineState();
}

class _AnimatedContaineState extends State<AnimatedContaine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween(
    begin: const Offset(0, -0.08),
    end: const Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: NetworkImage(
                'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/03/Kwaku-artwork-.webp'),
          ),
        ),
      ),
    );
  }
}
