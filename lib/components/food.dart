class Food {
  final String name;       // Made fields final since they shouldn't change
  final String imagePath;  // Renamed to be more descriptive
  final String description;
  final double price;
  final int units;    // Default value for units

  const Food({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.units, // Default value for units
  });
}

final List<Food> foods = const [
  Food(
    name: 'Hamburger',
    imagePath: 'assets/drawfood/hamburger.png',  // More organized path
    description: 'Juicy beef patty with cheese and fresh vegetables',
    price: 10.99,  
    units: 2 // Default value for units
  ),
  Food(
    name: 'Pizza',
    imagePath: 'assets/drawfood/pizza.png',
    description: 'Classic Margherita with fresh basil and mozzarella',
    price: 12.99,
    units: 1 // Default value for units
  ),
  Food(
    name: 'Spaghetti',
    imagePath: 'assets/drawfood/spaghetti.png',
    description: 'Traditional Italian pasta with marinara sauce',
    price: 9.99,
    units: 3 // Default value for units
  ),
  Food(
    name: 'Vegetables',
    imagePath: 'assets/drawfood/vegetables.png',
    description: 'Fresh seasonal vegetables with a light dressing',
    price: 9.99,
    units: 1 // Default value for units
  ),
  Food(
    name: 'Chicken',
    imagePath: 'assets/drawfood/chiken.png',
    description: 'Grilled chicken breast with herbs and spices',
    price: 9.99,
    units: 1 // Default value for units
  ),
];