class ItemModel {
  String? img;
  String? title;
  String? price;

  ItemModel(this.img, this.title, this.price);

  static List<ItemModel> items() {
    return [
      ItemModel(
          "assets/images/iphone12pro.jpg", "iphone 12 Pro", "161,999.00 TK"),
      ItemModel("assets/images/AppleWatch.jpg", "Apple Watch", "99,000.00 TK"),
      ItemModel("assets/images/camera.jpg", "Samsung Camera", "70,999.00 TK"),
      ItemModel("assets/images/samsung.jpg", "Samsung TV", "105,999.00 TK"),
      ItemModel("assets/images/Samsung_phone.jpg", "Samsung Smart Phone",
          "99,000.00 TK"),
      ItemModel("assets/images/iPhone.jpg", "iPhone", "80,999.00 TK"),
      ItemModel(
          "assets/images/canon_camera.jpg", "Canon Camera", "60,000.00 TK"),
    ];
  }
}

/*
ListView.builder(
shrinkWrap: true,
scrollDirection: Axis.horizontal,
itemCount: widget.item_list.length,
itemBuilder: (BuildContext context, int index) {
var itemInfo = widget.item_list[index];
return Stack(
children: [
Container(
width: 300,
height: 300,
child: Image.asset(
"${itemInfo.img}",
fit: BoxFit.fill,
),
)
],
);
})
*/
