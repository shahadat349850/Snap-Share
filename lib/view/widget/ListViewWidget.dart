
import 'package:flutter/material.dart';
import 'package:snapshare/view/widget/image_data.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
    required this.itemList,
  });

  final List<ImageData> itemList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return Image.network(
          itemList[index].path,
          fit: BoxFit.fill,
        );
      },
    );
  }
}
