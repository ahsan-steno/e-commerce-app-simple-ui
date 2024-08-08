
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled1/signupscreen.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  getpages(){
    return [
      PageViewModel(
        decoration: PageDecoration(imageFlex: 2,),
        image: Image.asset('assets/images/first.jpg', height: 250,width: 300, fit: BoxFit.fill,),


        titleWidget:    Text('Start Journey   With Nike',style: TextStyle(fontWeight: FontWeight.w600,fontSize:37,color: Colors.black),),


        bodyWidget: Text('Smart, Gorgeous & Fashionable  Collection', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black45),)
      ),
      PageViewModel(
          decoration: PageDecoration(imageFlex: 2,),
          image: Image.asset('assets/images/second.jpg', height: 290, width: 350, fit: BoxFit.fill,),
          titleWidget: Text('Follow Latest Style Shoes',style: TextStyle(fontWeight: FontWeight.w600,fontSize:40,color: Colors.black),),
          bodyWidget: Text('There Are Many Beautiful And Atractive plans To Your Room', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black45),)
      ),
      PageViewModel(

          decoration: PageDecoration(imageFlex: 2,),
          image: Image.asset('assets/images/image3.jpg', height: 290, width: 350, fit: BoxFit.fill,),
          titleWidget: Text('Summer Shoes Nike 2024',style: TextStyle(fontWeight: FontWeight.w600,fontSize:38,color: Colors.black),),
          bodyWidget: Padding(
            padding: const EdgeInsets.only(right: 60,),
            child: Text('Sneakers Skate Shoe Nike One', style: TextStyle(fontSize:20 , fontWeight: FontWeight.w400, color: Colors.black45),),
          )
      ),


    ];
  }
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: true,
      skip: const Text('Skip',style: TextStyle(color: Colors.black, fontSize: 20),),
      next: const Icon(Icons.arrow_forward_rounded,color: Colors.black),
      done: Container(height: 50,width: 500,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10), color: Colors.blue
        ),

        child: Center(child: Text('Get Started', style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),))),
      dotsDecorator: DotsDecorator(color: Colors.blue),
      onDone: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signupscreen(),));

      },
     pages: getpages()
    );

  }
}
