class CustomUser {
  final int id;
  final String name;
  final String email;
  final String address;

  CustomUser.fromJson(Map<String, dynamic> json)
      : this.id = json['id'],
        this.name = json['name'],
        this.email = json['email'],
        this.address = json['address'];

  Map<String, dynamic> get toMap {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'address': this.address,
    };
  }
}
