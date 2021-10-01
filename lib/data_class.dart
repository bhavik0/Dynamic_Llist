class User {
  final int id;
  final String name, email, gender, profile;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.gender,
      required this.profile});
}

class UserModel {
  static final items = [
    User(
        id: 1,
        name: "bhavik",
        email: "bhaviklimbani1@Gmail.com",
        gender: "Male",
        profile: "http://dummyimage.com/122x100.png/cc0000/ffffff")
  ];
}
