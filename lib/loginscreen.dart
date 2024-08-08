import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';
import 'package:untitled1/componant/componant.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: ListView(
              children: [ Column(
                children: [
                  Text('Hello again!',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500,color: Colors.black,),),
                  Text('Welcome Back You have Been Missed!', style: TextStyle(color: Colors.black45),),
                  SizedBox(height: 20,),
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
              SizedBox(height: 60,),
              buttoncomponant(name: 'Login', onPress: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }),

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
