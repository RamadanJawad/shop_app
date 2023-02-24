class User {
  late int id;
  late String fullName;
  late String email;
  late String gender;
  late String? fcmToken;
  late String token;
  late String refreshToken;
  late bool isActive;
  late String password;

  User();
  User.parm(
      {required this.fullName,
      required this.email,
      required this.gender,
      required this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    gender = json['gender'];
    fcmToken = json['fcm_token'];
    token = json['token'];
    refreshToken = json['refresh_token'];
    isActive = json['is_active'];
  }
}
