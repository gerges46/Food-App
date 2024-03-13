
import 'package:flutter/material.dart';
import 'package:foodappws/pages/foodDetails.dart';
import 'package:foodappws/utillites/recipeModel.dart';

class PopularFoodCard extends StatelessWidget {
 final RecipeModel food;
  const PopularFoodCard({
    Key? key,
    required this.food
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>FooddetalisPage(food)));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0,left: 5),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: NetworkImage(food.imageUrl),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(food.title,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text("4.2"),
                                    Row(
                                      children: [
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.indigo,size: 15,),
                                        Icon(Icons.star,color: Colors.grey,size: 15,),
                                      ],
                                    ),
                                    Text("(+12)"),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    Text("\$" + food.price ,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}