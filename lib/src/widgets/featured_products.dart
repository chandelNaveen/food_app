import 'package:flutter/material.dart';
import 'package:food_delivery_customer/src/models/products.dart';
import 'package:food_delivery_customer/src/widgets/commons.dart';
import 'package:food_delivery_customer/src/widgets/custom_text.dart';

List<Product> productsList = [
  Product(name: "Burger", price: 7.99, rating: 4.6, vendor: "GoodFood", wishList: true, image: "5.jpg"),
  Product(name: "Apple Pie", price: 9.99, rating: 4.3, vendor: "GoodFood", wishList: false, image: "4.jpg"), 
   Product(name: "Chicken", price: 19.20, rating: 4.2, vendor: "GoodFood", wishList: true, image: "2.jpg"),
];

class Featured extends StatelessWidget {
  
 @override
 Widget build(BuildContext context) {
  return Container(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productsList.length,
              itemBuilder: (_,index){
              return Padding(
                padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
              child: Container(
            height: 220,
            width: 200,
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: red[50],
                    offset: Offset(15,5),
                    blurRadius: 30,
                  )
                ]
              ),
            child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/${productsList[index].image}",
                   height: 140,
                    width:140,
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(
                          text: productsList[index].name,
                          ),
                      ),

           

          Padding(padding: EdgeInsets.all(8),
            child: Container(
                      decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20) ,
                            color: white,
                             boxShadow: [
                                      BoxShadow(
                                        color: grey[300],
                                        offset: Offset(1,1),
                                        blurRadius: 4,
                                                )
                                          ]
                      ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: productsList[index].wishList ? Icon(
                            Icons.favorite,
                            color: red,
                             size: 18,
                             ) :  Icon(
                            Icons.favorite_border,
                            color: red,
                             size: 18,
                             ), 
                        ),
                      ),
             )
                    ],
                  ),
            

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CustomText(text: productsList[index].rating.toString(),
                           color: grey,
                            size: 14,
                            ),
                         ),
                         SizedBox(width: 2,),
                         Icon(Icons.star, color: red, size:16,),
                        Icon(Icons.star, color: red, size:16,),
                        Icon(Icons.star, color: red, size:16,),
                        Icon(Icons.star, color: red, size:16,),
                        Icon(Icons.star, color: grey, size:16,)




                              ],
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 8.0),
                     child: CustomText(text: "\$${productsList[index].price}",
                      weight: FontWeight.bold,
                      ),
                   )
              ],
            ),
              

                ],
            ),
          ),
              
              );
            }),
          );
  }
}