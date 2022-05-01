import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/models/drawer_item_model.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({Key? key, required this.item}) : super(key: key);

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(
            item.settingName,
            style: const TextStyle(color: darkGrey, fontSize: 14.0),
          ),
          trailing: Switch(
            activeColor:
                brightness == Brightness.light ? darkGreen : neutralGrey,
            activeTrackColor:
                brightness == Brightness.light ? lightGreen : orange,
            inactiveThumbColor: primaryColor,
            inactiveTrackColor: darkGrey,
            value: item.activeSetting,
            onChanged: (bool value) {
              item.setActiveSetting(value);
            },
          ),
        );
      },
    );
  }
}
