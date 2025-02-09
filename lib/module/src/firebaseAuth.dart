import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> registerWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (error) {
      print('Ошибка регистрации: $error');
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (error) {
      print('Ошибка входа: $error');
      return null;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    print('Пользователь вышел');
  }
}
