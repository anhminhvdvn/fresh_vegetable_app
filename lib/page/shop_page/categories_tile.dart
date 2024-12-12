import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesTile extends StatelessWidget {
  final String categoriesName;
  final String categoriesImages;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  CategoriesTile({
    super.key,
    required this.categoriesName,
    required this.categoriesImages,
    // required this.onChanged,
    // required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //text
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoriesImages),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        //images
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(categoriesImages),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
