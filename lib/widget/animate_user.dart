import 'package:flutter/material.dart';

class AnimatedIconButton extends StatefulWidget {
  final String image;
  final double width;
  final double height;
  final VoidCallback onTap;

  const AnimatedIconButton({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  State<AnimatedIconButton> createState() => _AnimatedIconButtonState();
}

class _AnimatedIconButtonState extends State<AnimatedIconButton>
    with SingleTickerProviderStateMixin {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() => _scale = 0.9);
  }

  void _onTapUp(TapUpDetails details) {
    setState(() => _scale = 1.0);
    widget.onTap();
  }

  void _onTapCancel() {
    setState(() => _scale = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        child: Image.asset(
          widget.image,
          width: widget.width,
          height: widget.height,
        ),
      ),
    );
  }
}
