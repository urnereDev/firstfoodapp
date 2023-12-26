import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Widget/custom_button.dart';
import 'package:firststore/Widget/custom_text_field_in_upload.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SecondUploadPage extends StatefulWidget {
  const SecondUploadPage({super.key});

  @override
  State<SecondUploadPage> createState() => _SecondUploadPageState();
}

class _SecondUploadPageState extends State<SecondUploadPage> {
  List ingredients = [1];
  List steps = [1];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '2/',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: mainText,
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: mainText,
                      ),
                    ),
                    TextButton.icon(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(secondaryColor)),
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text(
                          'Group',
                          style: TextStyle(
                            color: mainText,
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ingredients.length,
                  itemBuilder: (context, index) => enterIngredient(index),
                ),
                ingredientButton(),
                SizedBox(height: 8,),

              ]),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Steps', style: TextStyle(
                      color: mainText,
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),),
                    TextButton.icon(onPressed: () {
                      setState(() {
                        steps.add(step(1));
                      });
                    }, icon: Icon(Icons.add), label: Text('Add', style: TextStyle(
                      color: mainText,
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),))
                  ],),
                  SizedBox(height: 15,),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: steps.length,
                    itemBuilder: (context, index) => step(index),),
                  SizedBox(height: 15,),
                  Row(children: [
                    Expanded(
                      child: CustomButton(
                        textColor: mainText,
                          color: form,
                          onTap: () {
                          Navigator.pop(context);
                      }, text: 'Back',),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: CustomButton(
                          color: primary,
                          onTap: () {

                      }, text: 'Done'),
                    )
                  ],)
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }

  enterIngredient(int index) {
    return Dismissible(
      key: GlobalKey(),
      direction: ingredients.length>1? DismissDirection.endToStart: DismissDirection.none,
      onDismissed: (direction) {
        setState(() {
          ingredients.removeAt(index);
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: CustomTextFieldInUpload(
          radius: 30,
          hint: 'Enter ingredient',
          icon: Icons.drag_indicator,
        ),
      ),
    );
  }

  ingredientButton() {
    return Padding(padding: EdgeInsets.symmetric(vertical: 12),
    child: InkWell(
      onTap: () {
        setState(() {
          ingredients.add(enterIngredient(1));
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: secondaryColor),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Icon(Icons.add),
          Text('Ingredient', style: TextStyle(
            color: mainText,
            fontFamily: 'Inter',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),)
        ]),
      ),
    ),);
  }

  step(int index) {
    return Dismissible(
      direction: steps.length>1 ? DismissDirection.endToStart : DismissDirection.none,
      key: GlobalKey(),
      onDismissed: (direction) {
        setState(() {
          steps.removeAt(index);
        });
      },
      child: Stack(children: [
        Column(
          children: [
            CustomTextFieldInUpload(hint: 'Tell a little about your food',
            maxLines: 4,
            radius: 10,
            icon: Icons.drag_indicator),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 35, right: 35),
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(color: form,
              borderRadius: BorderRadius.circular(10),),
              child: Icon(IconlyBold.camera),
            )
          ],
        ),
        Align(alignment: Alignment.topLeft,child: CircleAvatar(
          backgroundColor: mainText,
          radius: 12,
          child: Text('${index+1}',style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),),
      ),),
      ],),
    );
  }
}