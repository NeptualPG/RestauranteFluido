import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/components/button.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 26, 26),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 25),

            //* shop name

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "HAMBURGER MAN", 
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 25),

            //* icon

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                'assets/drawfood/hamburger.png',  // No leading slash
              ),
            ),

            //* title

            Text("THE TASTE OF AMERICAN FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            //* subtitle

            Text(
              "Feel the taste of American food with us.",
              style: TextStyle(
                color: Colors.grey,
                height: 2,
              ),
            ),
            
            const SizedBox(height: 25),

            //* get started button

            MyButton(text: "Get Started",
            onTap:() 
              {Navigator.pushNamed(context, '/menupage'); // Navigate to menu page
            }, // Navigate to home page
            ),
        ],
        ),
      ),
    );

  }
}