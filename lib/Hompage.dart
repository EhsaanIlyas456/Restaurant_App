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
         backgroundColor: Colors.black,
         body: Container(
           width: screenwidth,
           height: screenheight,

           child: SafeArea(
             child:SingleChildScrollView(

               child: Column(
                 children: [
                   SingleChildScrollView(
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
                           Container(
                             child: Text("Go Burgering", style: TextStyle(fontSize: 22,color:Colors.yellow,fontWeight: FontWeight.bold)),

                           ),
                           BannerAreaV(),
                           SizedBox(
                             height: 20,
                           ),
                           BannerArea(),
                     
                         ],
                     
                     
                     
                       ),
                     ),
                   ),
                  SizedBox(
                    height:15,

                  ),

                 ],
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
  const BannerArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.height*0.5;
    PageController controller = PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = [];

    for (int x = 0; x < bannerItems.length; x++) {
      if (x < bannerImage.length) {
        var bannerView = Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[

                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),



                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(bannerItems[x], style: TextStyle(fontSize: 25.0, color: Colors.white)),
                    Image.asset(
                      bannerImage[x],
                      height: 150,
                      width: 150,
                    ),


                    Text(
                      "More than 40%",
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:<Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Your button press logic here
                          },
                          child: Text('Add to cart'), // You can replace this with any widget as your button label
                        )

                      ]
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
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

    return Container(
      height: screenwidth,
      child: banners.isNotEmpty
          ? PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: banners,
      )
          : Container(),
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

var bannerItemsk=["Burger","Noodles","Pizza","Hawkers","bluehill",];
var bannerImagek= ["images/burger.jpg","images/noodles.jpg", "images/pizza.jpg", "images/hawkers.jpg","images/bluehill.jpg"];
class BannerAreaV extends StatelessWidget {
  const BannerAreaV({super.key});

  @override
  Widget build(BuildContext context) {

    var screenwidth=MediaQuery.of(context).size.width;
    PageController controller=PageController(viewportFraction: 0.8,initialPage: 1);

    int x=0;
// Assuming bannerImage and bannerItems have the same length

    List<Widget> banners = [];

    for (int x = 0; x < bannerItemsk.length; x++) {
      if (x < bannerImagek.length) {
        var bannerView = Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(bannerImagek[x], fit: BoxFit.cover),
                  ),


                  Column(

                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text(bannerItemsk[x],style: TextStyle(fontSize: 25.0,color: Colors.white),),
                      Text(
                        "More than 40%",
                        style: TextStyle(fontSize: 12.0,color:Colors.white),
                      ),
                      SizedBox(
                        height:15,
                      ),


                    ],


                  )



                ],


              ),
            ));

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

