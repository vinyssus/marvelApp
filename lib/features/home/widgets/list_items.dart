import 'package:flutter/material.dart';
import 'package:marvel_app/features/home/widgets/character_list_item.dart';

class CaractereListes extends StatelessWidget {
  const CaractereListes({Key? key, this.imagePath, this.imageTitle})
      : super(key: key);
  final String? imagePath;

  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return CharacterListItem(
          //imagePath: ,
          //imageTitle: ,
        );
      },
    );
  }
}
