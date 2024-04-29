import 'package:haiwangram_mobile/models/user_model.dart';

class Post {
  final int id;
  final String caption;
  final String title;
  final String photoUrl;
  final double userId;
  final User user;
  final String createdAt;
  final String updatedAt;

  Post({
    required this.id,
    required this.caption,
    required this.title,
    required this.photoUrl,
    required this.userId,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      caption: json['caption'],
      title: json['title'],
      photoUrl: json['photo_url'],
      userId: json['user_id'],
      user: User.fromJson(json['user']),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}


// {
//   "id": 199,
//   "caption": "lorem ipsum dolor sit amet consectetur adipiscing elit commodo donec",
//   "title": "lorem ipsum dolor sit amet",
//   "photo_url": "https://picsum.photos/id/34/1280/720",
//   "user_id": 118,
//   "user": {
//     "id": 118,
//     "email": "ikhjtf-iothjv@example.com",
//     "username": "ikhjtf-iothjv",
//     "full_name": "Ikhjtf Iothjv",
//     "profile_image_url": "https://randomuser.me/api/portraits/men/34.jpg",
//     "description": "lorem ipsum dolor sit amet consectetur adipiscing",
//     "birth_date": "1996-04-27T16:43:25.634144+07:00"
//   },
//   "comments": null,
//   "likes": null,
//   "bookmarks": null,
//   "created_at": "2024-04-27T16:43:25.691225+07:00",
//   "updated_at": "2024-04-27T16:43:25.697005+07:00"
// }