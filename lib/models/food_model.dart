class FoodModel {
  String title;
  String description;
  String urlImage;
  FoodModel({
    required this.title,
    required this.description,
    required this.urlImage,
  });
}

List<FoodModel> foodModeList = [
  FoodModel(
      title: "Lomo saltado", description: "Descri lomo", urlImage: "wwww"),
  FoodModel(title: "Ceviceh", description: "Cevivhe", urlImage: "wwww"),
  FoodModel(
      title: "Causa rellena", description: "Descri causa", urlImage: "wwww"),
];
