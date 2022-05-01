import 'package:flutter/material.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:provider/provider.dart';

class ZoomButton extends StatelessWidget {
  const ZoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            color: themeNotifier.isDark ? darkGrey : darkGreen,
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
      },
    );
  }
}
