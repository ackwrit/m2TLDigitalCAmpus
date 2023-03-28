import 'package:flutter/material.dart';
import 'globale.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,

              backgroundImage: NetworkImage(myUser.avatar??defaultImage),
            ),
            ListView(
              shrinkWrap: true,
              children: [

                Text(myUser.pseudo??""),
                Text(myUser.email)

              ],

            ),

            TextButton(
                onPressed: (){
                  //déconnexion
                },
                child: const Text("Déconnexion")
            ),

          ],
        )
    );
  }
}
