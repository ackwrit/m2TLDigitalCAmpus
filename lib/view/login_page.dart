import 'package:flutter/material.dart';
import 'package:m2tldigitalcampus/view/dash_board.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //variable
  List<bool> selection = [true,false];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: const EdgeInsets.all(10.0),
       child: bodyPage(),
     ),
    );
  }


  Widget bodyPage(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
              //color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image:AssetImage("assets/zelda.png"),
                fit: BoxFit.fill
              )
            ),
          ),
          const SizedBox(height: 10),


          //toogleButton

          ToggleButtons(
              onPressed: (value){
                if(value == 0){
                  setState(() {
                    selection[0]=true;
                    selection[1]= false;
                  });

                }
                else
                  {
                    setState(() {
                      selection[0]=false;
                      selection[1]= true;
                    });

                  }
              },
              isSelected: selection,
              children:  [
                Text("Connexion"),
                Text("Inscription")
              ]
          ),


          const SizedBox(height: 10),

          //adresse mail
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.mail),
              hintText: "Entrer votre adresse mail",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),

          const SizedBox(height: 10),


          //password
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                hintText: "Entrer votre mot de passe",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),

          const SizedBox(height: 10),


          //boutton

          ElevatedButton(
              onPressed: (){
                //connexion
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return const DashBoard();
                  }
                ));


                //inscription
              },
              child: Text(selection[0]?"Connexion":"Inscription")
          )
        ],
      ),
    );
  }
}
