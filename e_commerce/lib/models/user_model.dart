import 'package:e_commerce/models/useradress_model.dart';

class UserModel {
  final String name, surname;
  final String mailAdress, userPassword;
  final List<UserAdressModel> userAdressList;
  String? userProfilePhotoUrl; // Maybe is empty
  UserModel({
    required this.name,
    required this.surname,
    required this.mailAdress,
    required this.userPassword,
    required this.userAdressList,
    this.userProfilePhotoUrl,
  });
}
