import 'package:flutter/material.dart';
import 'package:images_list/core/utils/colors.dart';

class ZoomButton extends StatelessWidget {
  const ZoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
        color: darkGreen,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.zoom_in,
          color: Colors.white,
        ),
      ),
    );
  }
}
