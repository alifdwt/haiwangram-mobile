class User {
  final int id;
  final String email;
  final String username;
  final String fullName;
  final String profileImageUrl;
  final String description;
  final String birthDate;

  User({
    required this.id,
    required this.email,
    required this.username,
    required this.fullName,
    required this.profileImageUrl,
    required this.description,
    required this.birthDate,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      fullName: json['full_name'],
      profileImageUrl: json['profile_image_url'],
      description: json['description'],
      birthDate: json['birth_date'],
    );
  }
}

// {
//   "id": 134,
//   "email": "aputradewantara@gmail.com",
//   "username": "alifdwt",
//   "full_name": "Alif Putra Dewantara",
//   "profile_image_url": "https://res.cloudinary.com/dxirtmo5t/image/upload/v1714211227/HaiwanGram/alifdwt_profile.jpg",
//   "description": "Pada mulanya adalah firman, firman itu bersama-sama dengan Allah, dan firman itu adalah Allah",
//   "birth_date": "1999-06-08T07:00:00+07:00"
// }