class CartImage {
  late int id;
  late String image;
  late String studentId;
  late String imageUrl;

  CartImage();

  CartImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    studentId = json['student_id'];
    imageUrl = json['image_url'];
  }
}