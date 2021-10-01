class User {
  final int id;
  final String name, email, gender, profile;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.profile,
  });

  //decode data
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      gender: map["gender"],
      profile: map["profile"],
    );
  }

  //encode data
  toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "gender": gender,
        "profile": profile,
      };
}

class UserModel {
  // static final items = [
  static List<User> items = [];
}
