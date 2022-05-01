import 'package:flutter/material.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/home_controller.dart';
import 'package:images_list/home/widgets/drawer_item_widget.dart';
import 'package:provider/provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Container(
        decoration: themeNotifier.isDark
            ? const BoxDecoration(color: darkPrimaryColor)
            : const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.3],
                  colors: [secondaryColor, primaryColor],
                ),
              ),
        child: Column(
          children: <Widget>[
            Container(
              color: themeNotifier.isDark ? darkPrimaryColor : primaryColor,
              height: 28.0,
            ),
            Container(
              height: 65.0,
              width: double.maxFinite,
              color: themeNotifier.isDark ? darkPrimaryColor : primaryColor,
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
                        color: themeNotifier.isDark
                            ? primaryColor
                            : darkPrimaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: themeNotifier.isDark
                                  ? darkGrey
                                  : primaryColor,
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color:
                                themeNotifier.isDark ? primaryColor : darkGrey,
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
                elevation: 10.0,
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
    });
  }
}
