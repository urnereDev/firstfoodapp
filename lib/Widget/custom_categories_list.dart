import 'package:firststore/Constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCategoriesList extends StatefulWidget {
  const CustomCategoriesList({super.key});

  @override
  State<CustomCategoriesList> createState() => _CustomCategoriesListState();
}

class _CustomCategoriesListState extends State<CustomCategoriesList> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Category',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: mainText,
            ),
          ),
        ),
        Row(
          children: [
            menuButton(
              onTap: () {
                setState(() {
                  _index=0;
                });
              },
              color: _index==0 ? primary:form,
              width: 65,
              text: 'All',
              textColor: _index==0? Colors.white:secondaryColor,
            ),
            menuButton(
              onTap: () {
                setState(() {
                  _index=1;
                });
              },
              color: _index==1 ? primary:form,
              width: 65,
              text: 'Food',
              textColor: _index==1? Colors.white:secondaryColor,
            ),
            menuButton(
              onTap: () {
                setState(() {
                  _index=2;
                });
              },
              color: _index==2 ? primary:form,
              width: 65,
              text: 'Drink',
              textColor: _index==2? Colors.white:secondaryColor,
            ),
          ],
        ),
      ],
    );
  }

  menuButton(
      {required String text,
      required Color color,
      required Color textColor,
      required double width,
      required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: 45,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
