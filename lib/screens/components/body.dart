import 'package:flutter/material.dart';
import 'package:movieinfo_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        CategoryList()
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> category = ["In Theatre", "Box Office", "Coming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
          itemBuilder: (context, index) => buildCategory(index, context)
          ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category[index],
            style: Theme
                .of(context)
                .textTheme
                .headline5?.copyWith(fontWeight: FontWeight.w600),
          ),
          Container(
            height: 6,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kSecondaryColor,
            ),
          )
        ],
      ),
    );
  }
}

