import 'UserModel.dart';

List<UserModel> _users = [];
List<UserModel> get_users() {
  return _users;
}
UserModel get_user(int p_index) {
  if(_users.length == 0)_users.add(UserModel(name: "admin"));
  return _users[p_index];
}

void addUser(UserModel p_user) {
  _users.add(p_user);
}

void updateUser(int p_index, UserModel p_user) {
  _users[p_index] = p_user;
}

void deleteUser(int p_index) {
  _users.removeAt(p_index);
}
