import 'package:flutter/material.dart';
import 'package:marvel_app/core/utils/functions_utils.dart';

class CharacterListItem extends StatelessWidget {
  const CharacterListItem({
    Key? key,
    this.imagePath,
    this.imageTitle,
  }) : super(key: key);
  final String? imagePath;
  final String? imageTitle;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getResponsiveItemSize(size.width, 10)
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.25,
            width: size.width * 0.4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getResponsiveItemSize(
                    size.width,
                    20,
                  ),
                ),
                topRight: Radius.circular(
                  getResponsiveItemSize(
                    size.width,
                    20,
                  ),
                ),
              ),
              child: FadeInImage.assetNetwork(
                alignment: Alignment.center,
                height: size.height * 0.25,
                width: size.width * 0.4,
                image: imagePath ?? '',
                placeholder: 'assets/character_placeholder.png',
                fit: BoxFit.cover,
                imageErrorBuilder: (_, __, ___) {
                  return Image.asset(
                    'assets/character_placeholder.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: getResponsiveItemSize(
              size.width,
              -20,
            ),
            child: Container(
              width: size.width * 0.4,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    getResponsiveItemSize(
                      size.width,
                      20,
                    ),
                  ),
                ),
              ),
              child: Text(
                imageTitle ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: getResponsiveItemSize(size.width, 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
