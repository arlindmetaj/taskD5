import 'package:devision5/Models/featured_categories.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<FeaturedCategories> _featuredCategories = FeaturedCategories.featuredCategories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _featuredCategories.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _featuredCategories[index].name,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 120,
                  child: Image.asset(_featuredCategories[index].image, fit: BoxFit.fill,),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}
