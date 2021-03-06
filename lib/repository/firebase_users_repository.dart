

import 'package:firebase_database/firebase_database.dart';
import 'package:universales_proyecto/repository/firebase_user_api.dart';

class FirebaseUsersRepository {

   
  final FirebaseUserApi api = FirebaseUserApi();

  DatabaseReference usuarios() => api.usuarios();
  DatabaseReference canalesUsuario(uid) => api.usuariosCanales(uid);

  Future<DataSnapshot> listUser() => api.listUser();
  Future<DataSnapshot> infoUser(String uid) => api.infoUser(uid);
}