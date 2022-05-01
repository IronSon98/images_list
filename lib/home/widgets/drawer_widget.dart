import 'package:flutter/material.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/home_controller.dart';
import 'package:images_list/home/widgets/drawer_item_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return Container(
      color: brightness == Brightness.light ? secondaryColor : darkPrimaryColor,
      child: Column(
        children: <Widget>[
          Container(
            color: brightness == Brightness.light
                ? primaryColor
                : darkPrimaryColor,
            height: 28.0,
          ),
          Container(
            height: 65.0,
            width: double.maxFinite,
            color: brightness == Brightness.light
                ? primaryColor
                : darkPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Configurações',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: brightness == Brightness.light
                          ? darkPrimaryColor
                          : primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: brightness == Brightness.light
                                ? primaryColor
                                : darkGrey,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: brightness == Brightness.light
                              ? darkGrey
                              : primaryColor,
                          size: 30.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
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
