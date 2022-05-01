import 'package:flutter/material.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/home_controller.dart';
import 'package:images_list/home/widgets/drawer_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        children: <Widget>[
          Container(
            color: primaryColor,
            height: 28.0,
          ),
          Container(
            height: 65.0,
            width: double.maxFinite,
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Configurações',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: darkGrey,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.lengthSettings,
                itemBuilder: (_, index) {
                  return Column(
                    children: <Widget>[
                      DrawerItemWidget(
                        item: controller.listSettings[index],
                      ),
                      Visibility(
                        visible: (index + 1) == controller.lengthSettings
                            ? false
                            : true,
                        child: const Divider(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
