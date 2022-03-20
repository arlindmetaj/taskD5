class GrillPartyModel {
  late final String categoryName;
  late final String image;
  late final String time;
  late final String description;
  late final double rating;

  GrillPartyModel({
    required this.categoryName,
    required this.image,
    required this.time,
    required this.description,
    required this.rating,
  });

  static List<GrillPartyModel> grillParty = [
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:27", description: "Grill Party 1", rating: 1.0),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:28", description: "Grill Party 2", rating: 1.5),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:29", description: "Grill Party 3", rating: 2.0),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:30", description: "Grill Party 4", rating: 2.5),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:31", description: "Grill Party 5", rating: 3.0),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:32", description: "Grill Party 6", rating: 3.5),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:33", description: "Grill Party 7", rating: 4.0),
    GrillPartyModel(categoryName: "Grill Party",image: "assets/images/i1.jpg", time: "00:34", description: "Grill Party 8", rating: 4.5),
  ];

}
