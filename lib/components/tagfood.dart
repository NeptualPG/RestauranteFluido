import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TagFood extends StatefulWidget {
  final String name;       // Made fields final since they shouldn't change
  final String imagePath;  // Renamed to be more descriptive
  final String description;
  final double price;
  final int units;

  const TagFood({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.units,
  });

  @override
  State<TagFood> createState() => _TagFoodState();
}

class _TagFoodState extends State<TagFood> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(children: [              
              Column(children: [
                Text('Name: ${widget.name}', 
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                
                Text('Price: \$${widget.price.toStringAsFixed(2)}', 
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 90, 19),
                  ),
                ),
                Text('Unit: ${widget.units.toString()}', 
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  ),
                Text(widget.description, 
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  ),
                ] 
              ),
              const SizedBox(width: 20,),
              Image.asset(
                widget.imagePath,
                width: 110,
                height: 100,                
                )
            ],
            
            ),
          )
        ), 
        const SizedBox(height: 5),
      ],
    );
  }
}