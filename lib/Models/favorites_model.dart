class FavoritesModel {
  late final String image;
  late final String time;
  late final String description;
  late final double rating;

  FavoritesModel({
    required this.image,
    required this.time,
    required this.description,
    required this.rating,
  });

  static List<FavoritesModel> favoritesModel = [
    FavoritesModel(image: "assets/images/i1.jpg", time: "00:27", description: "Bacon wrapped", rating: 1.0),
    FavoritesModel(image: "assets/images/i1.jpg", time: "00:28", description: "Jalapeno Poppers", rating: 2.0),
    FavoritesModel(image: "assets/images/i1.jpg", time: "00:29", description: "Lobsters", rating: 3.0),
    FavoritesModel(image: "assets/images/i1.jpg", time: "00:30", description: "Something New", rating: 4.0),
  ];
}
