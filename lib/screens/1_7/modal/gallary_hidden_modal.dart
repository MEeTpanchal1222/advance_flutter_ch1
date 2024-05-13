class GalleryModel {
  String? image;
  String? name;
  int? quantity;

  GalleryModel(
      {required this.image, required this.name, required this.quantity});
}

class HiddenGalleryModel {
  String? image;

  HiddenGalleryModel({required this.image});
}

List<GalleryModel> galleryData = [
  GalleryModel(
      image: "assets/gallary/img.png", name: "Camera", quantity: 111),
  GalleryModel(
      image: "assets/gallary/img_1.png", name: "Home", quantity: 4001),
  GalleryModel(
      image: "assets/gallary/img_2.png", name: "Facebook", quantity: 10),
  GalleryModel(
      image: "assets/gallary/img_3.png", name: "Whatsapp", quantity: 550),
  GalleryModel(
      image: "assets/gallary/img_4.png", name: "Screenshot", quantity: 88),
  GalleryModel(
      image: "assets/gallary/img_5.png", name: "Instagram", quantity: 111),
  GalleryModel(
      image: "assets/gallary/img_6.png", name: "Stars", quantity: 15),
  GalleryModel(
      image: "assets/gallary/img_7.png",name: "Animals", quantity: 1507),
  GalleryModel(
      image: "assets/gallary/img_8.png", name: "Cars", quantity: 15000),
  GalleryModel(
      image: "assets/gallary/img_9.png", name: "Night", quantity: 15),
  GalleryModel(
      image: "assets/gallary/img_10.png", name: "Flower", quantity: 47),
  GalleryModel(
      image: "assets/gallary/img_11.png", name: "Sunset", quantity: 55),
];

List<HiddenGalleryModel> hiddenData = [
  HiddenGalleryModel(image: "assets/gallary/hidden/img_1.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_2.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_3.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_4.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_5.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_6.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_7.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_8.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_9.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_10.jpg"),
  HiddenGalleryModel(image: "assets/gallary/hidden/img_11.jpg"),
];