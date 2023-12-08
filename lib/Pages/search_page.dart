import 'package:firststore/Constants/colors.dart';
import 'package:firststore/Pages/Taps/home_tap.dart';
import 'package:firststore/Pages/home_page.dart';
import 'package:firststore/Widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: mainText,
                        )),
                    Expanded(
                      child: CustomTextFormField(
                        hint: 'Search',
                        prefixIcon: IconlyLight.search,
                        controller: searchController,
                        filled: true,
                        suffixIcon: searchController.text.isEmpty
                            ? null
                            : Icons.cancel_sharp,
                        onTapSuffixIcon: () {
                          searchController.clear();
                        },
                        onChanged: (pure) {
                          setState(() {});
                        },
                        onEditingComplete: () {
                          HomeTap.previousSearch.add(searchController.text);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconlyBold.filter,
                        color: mainText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              color: Colors.white,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: HomeTap.previousSearch.length,
                itemBuilder: (context, index) => previousSearchItem(index),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Search Suggestions',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: mainText,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      searchSuggestionsTime('sushi'),
                      searchSuggestionsTime('sandwich'),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      searchSuggestionsTime('seafood'),
                      searchSuggestionsTime('fried rice'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  previousSearchItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: () {},
        child: Dismissible(
          key: GlobalKey(),
          onDismissed: (direction) {
            setState(() {});
            HomeTap.previousSearch.removeAt(index);
          },
          child: Row(
            children: [
              Icon(
                IconlyLight.time_circle,
                color: secondaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                HomeTap.previousSearch[index],
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: mainText,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.call_made_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  searchSuggestionsTime(String text) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: form,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: mainText,
        ),
      ),
    );
  }
}
