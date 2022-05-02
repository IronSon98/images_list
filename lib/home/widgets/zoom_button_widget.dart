import 'package:flutter/material.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/models/list_item_model.dart';
import 'package:provider/provider.dart';

class ZoomButton extends StatelessWidget {
  const ZoomButton({Key? key, required this.item}) : super(key: key);

  final ListItemModel item;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
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
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Container(
                      height: orientation == Orientation.portrait
                          ? size.height * 0.40
                          : size.height * 0.80,
                      width: orientation == Orientation.portrait
                          ? size.width * 0.80
                          : size.width * 0.40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(item.imgLarge),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: themeNotifier.isDark
                              ? darkPrimaryColor
                              : darkGreen,
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: themeNotifier.isDark
                                  ? darkPrimaryColor
                                  : lightGreen,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color:
                                themeNotifier.isDark ? primaryColor : darkGreen,
                            size: 30.0,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  );
                },
              );
            },
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
