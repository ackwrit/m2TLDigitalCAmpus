
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseManager {
  //attributs
  final auth = FirebaseAuth.instance;
  final storage = FirebaseStorage.instance;
  final cloudMessages = FirebaseFirestore.instance.collection("MESSAGES");
  final cloudUsers = FirebaseFirestore.instance.collection("UTILISATEURS");



  //creer un utilisateur


  //connecter avec un utilisateur


// mise à jour d'un utlisateur

//suppression d'un utlisateur

}