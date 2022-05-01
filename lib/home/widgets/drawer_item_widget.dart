import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/models/drawer_item_model.dart';
import 'package:provider/provider.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({Key? key, required this.item}) : super(key: key);

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return Observer(
          builder: (_) {
            return ListTile(
              title: Text(
                item.settingName,
                style: const TextStyle(color: darkGrey, fontSize: 14.0),
              ),
              trailing: Switch(
                activeColor: themeNotifier.isDark ? neutralGrey : darkGreen,
                activeTrackColor: themeNotifier.isDark ? orange : lightGreen,
                inactiveThumbColor: primaryColor,
                inactiveTrackColor: darkGrey,
                value: item.activeSetting,
                onChanged: (bool value) {
                  item.setActiveSetting(value);
                  if (item.id == 2) {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  }
                },
              ),
            );
          },
        );
      },
    );
  }
}
