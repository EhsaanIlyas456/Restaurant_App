import 'package:flutter/material.dart';


class Hompage extends StatefulWidget {
  const Hompage({super.key});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {

    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
       return Scaffold(
         backgroundColor: Colors.blueGrey,
         body: Container(
           width: screenwidth,
           height: screenheight,

           child: SafeArea(
             child:SingleChildScrollView(

               child: Container(
               color:Colors.black,
                 child: Column(
                   children:<Widget> [
                     Row(

                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                     children: [
                        IconButton(icon: Icon(Icons.menu),onPressed: (){}, color: Colors.lime,hoverColor: Colors.deepOrange,),
                        Text('BUGERBAR',style: TextStyle(fontSize: 25,fontFamily:'New Times Roman',color: Colors.yellow,fontWeight: FontWeight.bold),),
                        IconButton(icon: Icon(Icons.person),onPressed: (){}, color: Colors.lime,),

                      ],



                     ),
                   SizedBox(
                     height: 20,
                   ),
                    BannerArea(),
                   ],


                 ),
               ),


             )
           ),

         )






       );


  }
}
var bannerItems=["Burger","Noodles","Pizza","Hawkers","bluehill",];
var bannerImage= ["images/burger.jpg","images/noodles.jpg", "images/pizza.jpg", "images/hawkers.jpg","images/bluehill.jpg"];
class BannerArea extends StatelessWidget {
  const BannerArea({super.key});

  @override
  Widget build(BuildContext context) {

    var screenwidth=MediaQuery.of(context).size.width;
    PageController controller=PageController(viewportFraction: 0.8,initialPage: 1);

 int x=0;
// Assuming bannerImage and bannerItems have the same length

    List<Widget> banners = [];

    for (int x = 0; x < bannerItems.length; x++) {
      if (x < bannerImage.length) {
        var bannerView = Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset(bannerImage[x], fit: BoxFit.cover),
              ],
            ),
          ),
        );

        banners.add(bannerView);
      } else {
        print('Warning: Index $x is out of range for bannerImage. Skipping...');
        // Optionally, you can provide a default image here.
        // For now, I'm skipping the iteration.
        continue;
      }
    }

// Rest of your code...




    return Container(
      width: screenwidth,
      height: screenwidth*9/16,
      child: banners.isNotEmpty ? PageView(
        controller:controller ,
        scrollDirection: Axis.horizontal,
        children: banners,

      ): Container(),

    );
  }
}




class Menulist extends StatefulWidget {
  const Menulist({super.key});

  @override
  State<Menulist> createState() => _MenulistState();
}

class _MenulistState extends State<Menulist> {
  @override
  Widget build(BuildContext context)
  
  {
    var screenwidth=MediaQuery.of(context).size.width;
    
    
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Image.asset("images/burger.jpg")

            ]


            
            
            
            
          )
          
          
          
        ],
        
        
        
      ),
      
      
    );
  }
}
