import 'dart:convert';
import 'dart:typed_data';

class User {
  Uint8List? image;
  String name;
  String email;
  String password;

  User({
    this.image,
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'User{image:$image,name: $name, email: $email, password: $password}';
  }

  factory User.fromJson(Map<String, dynamic> json) {
    Uint8List? imageBytes;
    if (json['image'] != null) {
      if (json['image'] is List) {
        // Convert the list to Uint8List if it's a List
        imageBytes = Uint8List.fromList(json['image'].cast<int>());
      } else if (json['image'] is String) {
        // Handle the case where the image is provided as a base64 String
        imageBytes = base64Decode(json['image']);
      }
    }
    return User(
      image: imageBytes,
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "image": image,
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
