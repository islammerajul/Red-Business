class BrandModel {
  String? url;
  String? serial;
  String? img;

  BrandModel({required this.url, this.serial, this.img});

  @override
  String toString() {
    return 'BrandModel{url: $url, serial: $serial, img: $img}';
  }
}
