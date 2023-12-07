import 'package:firststore/Widget/custom_binary_option.dart';
import 'package:firststore/Widget/custom_categories_list.dart';
import 'package:firststore/Widget/custom_product_item.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hint: 'Search',
                        prefixIcon: IconlyLight.search,
                        filled: true,
                        enabled: true,
                      ),
                      const CustomCategoriesList(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      CustomBinaryOption(),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1/1.5,
                          children: List.generate(
                            5,
                            (index) => CustomProductItem(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
