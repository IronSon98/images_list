import 'package:flutter/material.dart';
import 'package:images_list/home/models/list_item_model.dart';
import 'package:images_list/home/widgets/zoom_button_widget.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({Key? key, required this.item}) : super(key: key);

  final ListItemModel item;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
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
          ),
        ),
        const Positioned(
          bottom: 16.0,
          right: 16.0,
          child: ZoomButton(),
        ),
      ],
    );
  }
}
