import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:m2tldigitalcampus/controller/firebase_manager.dart';
import 'package:m2tldigitalcampus/controller/globale.dart';
import 'package:m2tldigitalcampus/model/utilisateur.dart';

class ListPersonne extends StatefulWidget {
  const ListPersonne({Key? key}) : super(key: key);

  @override
  State<ListPersonne> createState() => _ListPersonneState();
}

class _ListPersonneState extends State<ListPersonne> {

  late List personnes;
  @override
  void initState() {
    personnes = myUser.favoris??[];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseManager().cloudUsers.snapshots(),
        builder: (context,snap){
        List documents = snap.data?.docs ?? [];
        if(documents.isEmpty){
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        else
          {
            return ListView.builder(
              itemCount: documents.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context,index){
                Utilisateur otherUser = Utilisateur(documents[index]);
                if(otherUser.uid == myUser.uid){
                  return Container();
                }
                else
                  {
                    return Card(
                      elevation: 5.0,
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage(otherUser.avatar??defaultImage),),
                        title: Text(otherUser.pseudo??""),
                        subtitle: Text(otherUser.email),
                        trailing: personnes.contains(otherUser.uid)?const Icon(Icons.favorite,color: Colors.red,):IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: (){

                          },
                        ),



                      ),
                    );
                  }
              }
              
            );
          }
        }
    );
  }
}
