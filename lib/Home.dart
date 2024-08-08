import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/componant/Dashboard_Component.dart';
import 'package:untitled1/componant/Drawer.dart';
import 'package:untitled1/popseeAll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

drawer: Drawer(
  child: ListView(
    children: [
      DrawerHeader(

        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset('assets/images/my.jpg',height: 100,width: 100,fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(50),),
            Text('AHSAN',style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      SizedBox(height: 10,),
      Column(
        children: [
          ListTile(
            title: Text('Profile',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.account_circle_rounded),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Home',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.home),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('My Cart',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.shopping_cart),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Favorite',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.favorite_border),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Notification',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.notifications_active),
          ),
          SizedBox(height: 10,),
          ListTile(
            title: Text('Logout',style: TextStyle(fontSize: 20),),
            leading: Icon(Icons.logout),
          )
        ],
      )
    ],
  ),
),

      appBar: AppBar(


        title: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
                Text('Location')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text('Haroon Abad',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      body:

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          SizedBox(
            height: 20,

          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              fillColor: Colors.white,
              hintText: 'Looking for Shoes',
              hintStyle: TextStyle(
                fontSize: 20,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text('Nike',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white))),
              ),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  'Puma',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
              ),
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Center(
                    child: Text('Adidas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Popular Shoes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => popseeAll()));
                },
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Dashboard(img: AssetImage('assets/images/pic_4.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 80,),
                SizedBox(
                  width: 20,
                ),
                Dashboard(img: AssetImage('assets/images/pic_5.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 78,),

                SizedBox(
                  width: 20,
                ),
              Dashboard(img: AssetImage('assets/images/pic_1.jpg'),title: 'Bst Seller',brand: 'NIKE JORDEN',price: 60,),

                SizedBox(width: 20,),
                Dashboard(img: AssetImage('assets/images/pic_9.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 55,),
                SizedBox(width: 20,),
                Dashboard(img: AssetImage('assets/images/pic_8.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 66,),
                SizedBox(width: 20,),
                Dashboard(img: AssetImage('assets/images/pic_10.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 102,),
                SizedBox(width: 20,),
                Dashboard(img: AssetImage('assets/images/pic_11.jpg'),title: 'Best Seller',brand: 'NIKE JORDEN',price: 154,),
                SizedBox(width: 20,),

              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

            ),



          ),
          SizedBox(height: 10,),
          SingleChildScrollView(child:
          Row(children: [Text('New Arrives', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),InkWell( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => popseeAll()));
          },
            child:


            Text('See All', style: TextStyle(

              fontSize: 20,color: Colors.blue
            ),),
          )],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
          ),
            SizedBox(height: 20,),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
            child:
            Row
              (children: [ Dashboard(img: AssetImage('assets/images/pic_n1.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 115,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n2.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 115,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n3.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 130,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n4.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 120,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n5.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 110,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n6.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 116,),
              SizedBox(width: 20,),
              Dashboard(img: AssetImage('assets/images/pic_n7.jpg',),title: 'Best Seller',brand: 'NIKE JORDEN',price: 150,),],)

        )

        ]

          ),
      ),
    );
  }
}
