import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/componant/Dashboard_Component.dart';
import 'package:untitled1/componant/Drawer.dart';

class popseeAll extends StatefulWidget {
  const popseeAll({super.key});

  @override
  State<popseeAll> createState() => _popseeAllState();
}

class _popseeAllState extends State<popseeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      SingleChildScrollView(child:
         Column(

           children: [ Dashboard(img: AssetImage('assets/images/pic_4.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 80,),
             SizedBox(
               height:20,
             ),
             Dashboard(img: AssetImage('assets/images/pic_5.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 78,),

             SizedBox(
               height: 20,
             ),
             Dashboard(img: AssetImage('assets/images/pic_1.jpg'),title: 'Bst Seller',brand: 'NIKE JORDEN',price: 60,),

             SizedBox( height: 20,),
             Dashboard(img: AssetImage('assets/images/pic_9.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 55,),
             SizedBox( height: 20,),
             Dashboard(img: AssetImage('assets/images/pic_8.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 66,),
             SizedBox( height: 20,),
             Dashboard(img: AssetImage('assets/images/pic_10.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 102,),
             SizedBox( height: 20,),
             Dashboard(img: AssetImage('assets/images/pic_11.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 154,),
             SizedBox( height: 20,),

           ],
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

         ),
      ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    SingleChildScrollView(child:
    Column(

                   children: [ Dashboard(img: AssetImage('assets/images/pic_n1.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 115,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n2.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 115,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n3.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 130,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n4.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 120,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n5.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 110,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n6.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 116,),
                   SizedBox( height: 20,),
                   Dashboard(img: AssetImage('assets/images/pic_n7.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 150,),],),
    )
             ],





           ),

       ],
      ),
    );
  }
}
