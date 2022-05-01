import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:images_list/home/models/drawer_item_model.dart';
import 'package:images_list/home/models/list_item_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final Uri url = Uri.parse(
      'https://api.unsplash.com/search/photos/?client_id=BAubKyGOpgpga-0CfKYJRVi2bhQbuzK1uiityVI7qRw&page=1&query=agro');

  @observable
  ObservableList data = [].asObservable();

  @observable
  ObservableList<ListItemModel> listItems = <ListItemModel>[].asObservable();

  @observable
  ObservableList<DrawerItemModel> listSettings =
      <DrawerItemModel>[].asObservable();

  @computed
  int get lengthList => listItems.length;

  @computed
  int get lengthSettings => listSettings.length;

  @action
  void initializeSettings() {
    var setting1 = DrawerItemModel('Exibir duas fotos por linha', false);
    var setting2 = DrawerItemModel('Tema preto', false);
    listSettings.add(setting1);
    listSettings.add(setting2);
  }

  @action
  Future<void> getData() async {
    http.Response response = await http.get(url);
    var teste = json.decode(response.body);
    data = ObservableList<dynamic>.of(teste['results']);

    _assignData();
  }

  @action
  void _assignData() {
    for (var i = 0; i < data.length; i++) {
      var medium = data.elementAt(i)['user']['profile_image']['medium'];
      var large = data.elementAt(i)['user']['profile_image']['large'];
      var element = ListItemModel(medium.toString(), large.toString());
      listItems.add(element);
    }
  }
}
