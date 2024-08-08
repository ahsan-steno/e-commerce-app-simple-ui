import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  AssetImage img;
  int price;
  String title;
  String brand;
  Dashboard(
      {super.key,
      required this.img,
      this.price = 222,
      this.brand = 'Best Seller',
      this.title = 'NIKE JORDEN'});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 230,width: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image(image: widget.img),
                  Text(
                    widget.title,
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  Text(widget.brand,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Text('\$${widget.price.toString()}')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
