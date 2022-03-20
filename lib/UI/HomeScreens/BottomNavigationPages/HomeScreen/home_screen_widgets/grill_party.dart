
import 'package:devision5/AlertDialog/custom_dialog_box.dart';
import 'package:devision5/Models/grill_party.dart';
import 'package:devision5/UI/HomeScreens/BottomNavigationPages/HomeScreen/widgets_gridview/grillparty_grid.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GrillParty extends StatefulWidget {
  const GrillParty({Key? key}) : super(key: key);

  @override
  State<GrillParty> createState() => _GrillPartyState();
}

class _GrillPartyState extends State<GrillParty> {
  final List<GrillPartyModel> _grillParty = GrillPartyModel.grillParty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Grill Party",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GrillPartyGridList(),
                    ),
                  );
                },
                child: Row(
                  children: const [
                    Text(
                      "View all ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            ],
          ),
          //BODY
          SizedBox(
            height: 220,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _grillParty.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(context: context,
                        builder: (BuildContext context){
                          return CustomDialogBox(
                            title: _grillParty[index].categoryName,
                            descriptions: "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                            image: _grillParty[index].image,
                          );
                        }
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 120,
                              child: Image.asset(
                                _grillParty[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Positioned(
                              top: 2,
                              right: 5,
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 22,
                              )
                            )
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
                              _grillParty[index].time,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Text(
                          _grillParty[index].description,
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
                              rating: _grillParty[index].rating,
                              isReadOnly: false,
                              size: 10,
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
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
