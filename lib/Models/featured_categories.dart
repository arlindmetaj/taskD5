class FeaturedCategories {
  late final String name;
  late final String image;

  FeaturedCategories({required this.name, required this.image});

  static List<FeaturedCategories> featuredCategories = [
    FeaturedCategories(
      name: "Tutorials",
      image: "assets/images/i1.jpg",
    ),
    FeaturedCategories(
      name: "Products",
      image: "assets/images/i2.jpg",
    ),
    FeaturedCategories(
      name: "News",
      image: "assets/images/i1.jpg",
    ),
    FeaturedCategories(
      name: "Something",
      image: "assets/images/i2.jpg",
    ),
  ];
}
