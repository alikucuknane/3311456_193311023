class User {
  String id;
  String username;
  String address;

  User({
    required this.id,
    required this.username,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'address': address,
    };
  }
}
