import 'package:flutter/material.dart';
import 'package:online_store/authentication_service.dart';
import 'package:online_store/consrants.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: kDefaultPaddin* 3,
              ),
            Row(
              children: [
                Text("Hello\nThere.",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),),
                Image.asset('assets/images/bag_1.png',width: 170,height: 150,),
              ],
            ),



              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),

              InkWell(
                child: Text("Fogot Password",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,

                ),),
              ),

          SizedBox(height: kDefaultPaddin,),

              Container(
                height: 50.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.blue,
                  color: Colors.blue,
                  elevation: 7.0,
                  child: InkWell(
                    onTap: (){
                      context.read<AuthenticationService>().signIn(

                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                      );
                    },
                    child: Center(
                      child: Text(
                        "LOGIN",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                    ),
                  ),
                ),
              ),



              SizedBox(
                height: kDefaultPaddin,
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0
                  ),

                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0),
                ),

                  child: InkWell(
                    onTap: (){

                    },
                    child: Center(
                      child: Text(
                        "SIGN UP",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                    ),

                ),

              ),
              SizedBox(
                height: kDefaultPaddin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}