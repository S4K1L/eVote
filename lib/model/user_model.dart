import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? name;
  final String? phone;
  final String? email;
  final String? password;
  final String? uid;

  UserModel({
    this.name,
    this.phone,
    this.email,
    this.password,
    this.uid,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot doc) {
    return UserModel(
      name: doc['name'],
      phone: doc['phone'],
      email: doc['email'],
      password: doc['password'],
      uid: doc['uid'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'email': email,
      'password': password,
      'uid': uid
    };
  }
}