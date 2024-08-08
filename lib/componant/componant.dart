import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/loginscreen.dart';
class buttoncomponant extends StatelessWidget {
  String name;
  VoidCallback onPress;
  buttoncomponant({required this.name , required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27,right: 27,top: 60),
      child: InkWell(

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>loginscreen(),));
        },

        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 60,width: 360,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,  ),
            child: Center(child: Text(name ,style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),
        ),
      ),
    );
  }
}

