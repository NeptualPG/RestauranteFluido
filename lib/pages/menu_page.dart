import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/components/button.dart';
import 'package:restaurant/theme/colors.dart';
import 'package:restaurant/components/food.dart';
import 'package:restaurant/components/tagfood.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Colors.grey[300],
      appBar: AppBar( 
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
          ),
          
          title: Text('Washington D.C.',
          style: GoogleFonts.dmSerifDisplay(
            color: Colors.grey[900],
          ),
          ),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [      
              //*Promo Banner
              Container(
        
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(25),
                child: Row(children: [
                  Column(children: [
                  //*Promo message
                    Text(
                    ' We have 5 Promo for you ',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.white,
                    )),
            
                    const SizedBox(height: 20,),
            
                  //* redeem button
                    MyButton(text: 'Back', onTap: ()  {
                      Navigator.pushNamed(context, '/intropage');
                    },)
                  ],),
            
                  //*Image 
                  Image.asset(
                    'assets/drawfood/pizza.png',  // No leading slash
                    height: 100,
                  ),
                  //
                ],)
              ),
              const SizedBox(height: 20,),
              //*Menu
              Text('Menu',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: Colors.grey[900],
              )),
              const SizedBox(height: 20,),
        
              for (int i = 0; i < foods.length; i++)
                TagFood(name: foods[i].name, imagePath: foods[i].imagePath, description: foods[i].description, price: foods[i].price, units: foods[i].units),
            ],
          ),
          ],
        ),
      )
    );
  }
}