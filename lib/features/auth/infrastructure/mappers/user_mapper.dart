import 'package:teslo_shop/features/auth/domain/domain.dart';

class UserMapper {
  static User userJsonToEntity(Map<String, dynamic> user, String? token) => User(
      id: user['id'],
      email: user['email'],
      fullName: user['fullName'],
      roles: List<String>.from(user['roles'].map((role) => role)),
      token: token ?? ''
    );
}
