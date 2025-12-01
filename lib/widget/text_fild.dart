import 'package:cardvipno1/colors/Ap_colors.dart';
import 'package:cardvipno1/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class texfildwidget extends StatelessWidget {
  const texfildwidget({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: "Search any car...",
        prefixIcon: Icon(Icons.search, color: ApColors.black),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(Assets.icons.yol),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 20.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(color: ApColors.greey, width: 2.0),
        ),
      ),
    );
  }
}
