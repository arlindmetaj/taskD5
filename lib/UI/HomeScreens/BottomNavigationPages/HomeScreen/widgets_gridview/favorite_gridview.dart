import 'package:devision5/Models/favorites_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'fixedHeight_grid.dart';

class FavoriteGridView extends StatefulWidget {
  const FavoriteGridView({Key? key}) : super(key: key);

  @override
  State<FavoriteGridView> createState() => _FavoriteGridViewState();
}

class _FavoriteGridViewState extends State<FavoriteGridView> {
  final List<FavoritesModel> _list = FavoritesModel.favoritesModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text(
            "Favorites",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 25),
              itemCount: _list.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                height: 225.0,
              ),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 170,
                          width: double.infinity,
                          child: Image.asset(
                            _list[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.timer,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Text(
                          _list[index].time,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Text(
                      _list[index].description,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothStarRating(
                          rating: _list[index].rating,
                          isReadOnly: true,
                          size: 15,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          color: Colors.amberAccent,
                          borderColor: Colors.amberAccent,
                          starCount: 5,
                          allowHalfRating: false,
                          spacing: 2.0,
                          onRated: (value) {
                            print("rating value -> $value");
                            // print("rating value dd -> ${value.truncate()}");
                          },
                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
