import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user_model.dart';

void addUser(User user) async {
  try {
    CollectionReference usersCollection =
        FirebaseFirestore.instance.collection('users');
    await usersCollection.add(user.toJson());
    // print('Kullanıcı başarıyla eklendi.');
  } catch (e) {
    // print('Kullanıcı eklenirken bir hata oluştu: $e');
  }
}
