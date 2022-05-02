import 'package:flutter/material.dart';
import 'package:images_list/home/models/list_item_model.dart';
import 'package:images_list/home/widgets/zoom_button_widget.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
      {Key? key, required this.item, required this.changeViewMode})
      : super(key: key);

  final ListItemModel item;
  final bool changeViewMode;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: changeViewMode ? size.height * 0.18 : size.height * 0.40,
            width: changeViewMode ? size.height * 0.38 : size.width * 0.80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imgMedium),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: ZoomButton(
            item: item,
          ),
        ),
      ],
    );
  }
}
