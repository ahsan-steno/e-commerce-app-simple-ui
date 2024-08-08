import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/componant/componant.dart';
import 'package:untitled1/loginscreen.dart';


class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),

          child: Center(
            child: ListView(children: [ Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text('Create Account',style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500,color: Colors.black),),
                  Text('Lets Create Account Together',style: TextStyle(fontSize: 17, color: Colors.black45),),
                  Padding(
                    padding: const EdgeInsets.only(top: 60,left: 30,right: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        hintText: 'Enter your name',
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock,),

                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),
                  buttoncomponant(name: 'Sign Up', onPress: () { Navigator.push(context, MaterialPageRoute(builder: (context) => loginscreen()));}),
                  SizedBox(height: 20,),

                 Center(
                   child: Padding(
                     padding: const EdgeInsets.only(top: 20,left: 75),
                     child: Row(children: [

                       Image(image: AssetImage('assets/images/logo.png'), height: 40, width: 40,),
                       Text('Sign in with google',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       SizedBox(height: 20,)


                     ],
                     ),
                   ),
                 ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text('Already Have An Account?',style: TextStyle(color: Colors.black45),),

                    ),
                   Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],)


                ],



                  ),
            ]
            ),
          ),
            )
          ),
        );


  }
}
