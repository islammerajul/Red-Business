class CategoryItemModel {
  String? img;
  String? title;

  CategoryItemModel(
    this.title,
    this.img,
  );

  static List<CategoryItemModel> categoryitem() {
    return [
      CategoryItemModel(
        "Headphone & Speaker",
        "assets/icons/head_phone.png",
      ),
      CategoryItemModel("Interior & Furniture", "assets/icons/furniture.png"),
      CategoryItemModel("Fashion & Clothing", "assets/icons/fashion.png"),
      CategoryItemModel("Electronics & gadgets", "assets/icons/television.png"),
      CategoryItemModel("Camera & Accessories", "assets/icons/camera.png"),
      CategoryItemModel("Smart Watch", "assets/icons/smartwatch.png"),
      CategoryItemModel("Fashion & Clothing", "assets/icons/shirt.png"),
      CategoryItemModel("Smart Phones", "assets/icons/smartphone.png"),
      CategoryItemModel("Fashion & Clothing", "assets/icons/dress.png"),
      CategoryItemModel("Fashion & Clothing", "assets/icons/womanclothes.png")
    ];
  }
}
