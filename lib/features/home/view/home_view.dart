import 'package:flutter/material.dart';
import 'package:marvel_app/core/utils/fonction_util.dart';
import 'package:marvel_app/features/home/widgets/character_list_item.dart';
import 'package:marvel_app/features/home/widgets/home_view_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        HomeViewHeader(),
        Flexible(
          flex: 1,
          child: Text(
            'view all',
                style:TextStyle(
          color: Colors.white,
          fontSize: getResponsiveItemSize(size.width, 17),
          )
          ),
        ),
        Expanded(
          child:
            ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index){
                return Center(child: CharacterListItem());
              },
            )
        ),
      ],
    );
  }
}
