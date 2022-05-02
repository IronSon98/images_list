import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:images_list/core/theme/theme_model.dart';
import 'package:images_list/core/utils/colors.dart';
import 'package:images_list/home/home_controller.dart';
import 'package:images_list/home/widgets/drawer_widget.dart';
import 'package:images_list/home/widgets/list_item_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    _controller.initializeSettings();
    _controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
          key: scaffoldKey,
          drawer: SizedBox(
            width: size.width,
            child: Drawer(
              child: DrawerWidget(controller: _controller),
            ),
          ),
          appBar: AppBar(
            title: Image.asset(
              themeNotifier.isDark
                  ? 'assets/images/appBarDark.PNG'
                  : 'assets/images/appBarLight.PNG',
              fit: BoxFit.cover,
              height: 44.0,
              width: 140.0,
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color:
                          themeNotifier.isDark ? darkPrimaryColor : lightGreen,
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: themeNotifier.isDark ? primaryColor : darkGrey,
                  ),
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ),
              ),
            ),
          ),
          body: Container(
            decoration: themeNotifier.isDark
                ? const BoxDecoration(color: darkPrimaryColor)
                : const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.5],
                      colors: [secondaryColor, primaryColor],
                    ),
                  ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 10.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: themeNotifier.isDark ? neutralGrey : grey,
                            height: 2.0,
                            width:
                                MediaQuery.of(context).size.width * 0.30 - 52,
                          ),
                          Container(
                            color: themeNotifier.isDark ? neutralGrey : grey,
                            height: 22.0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 10.0),
                              child: Text(
                                'IMAGENS DO AGRONEGÓCIO',
                                style: TextStyle(
                                  color: themeNotifier.isDark
                                      ? primaryColor
                                      : darkGrey,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: themeNotifier.isDark ? neutralGrey : grey,
                            height: 2.0,
                            width:
                                MediaQuery.of(context).size.width * 0.30 - 52,
                          ),
                        ],
                      ),
                    ),
                    Observer(
                      builder: (_) {
                        return Expanded(
                          child: GridView.count(
                            crossAxisCount: _controller.changeViewMode ? 2 : 1,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            children: List.generate(
                              _controller.lengthList,
                              (index) {
                                var item = _controller.listItems[index];
                                return Column(
                                  children: [
                                    ListItemWidget(
                                      item: item,
                                      changeViewMode:
                                          _controller.changeViewMode,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
