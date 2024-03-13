import 'package:flutter/material.dart';
import 'package:foodappws/utillites/apiData.dart';
import 'package:foodappws/widget/TopOfferCard.dart';
import 'package:foodappws/widget/myTitle.dart';
import 'package:foodappws/widget/popularFoodCard.dart';
import 'package:foodappws/widget/searchBar.dart';
import 'package:foodappws/widget/sectioncard.dart';
class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}
List icons =[Icons.emoji_food_beverage,Icons.food_bank_outlined,Icons.fastfood_outlined,Icons.food_bank_sharp,Icons.local_drink_outlined,Icons.local_pizza];
List titles =["Asian","pasta","pizza","ice coffe","Starbacks","locial pizza "];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
body: SafeArea(
  child:   Padding(
    padding: const EdgeInsets.all(10.0),
    child: SingleChildScrollView(
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

         myTitle(title: "Explore", fontSize: 30),
          searchBar(),
   Container(
       height: 100,

       child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: titles.length,
           itemBuilder: (context,index){
         return sectionCard(icon: icons[index], title: titles[index]);
       }),
   ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10),
            child: myTitle(title: "Popular Food", fontSize: 17),
          ),
          Container(
            height: 200,

            child: ListView.builder(
                itemCount: foods.length,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index){
              return PopularFoodCard(food: foods[index],);
            } ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10),
            child: myTitle(title: "Top Offers", fontSize: 17),
          ),
          Container(
            height: 400,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
              return TopOfferCard();
            }),
          ),


        ],

      ),
    ),
  ),
  ),
    );
  }


}














