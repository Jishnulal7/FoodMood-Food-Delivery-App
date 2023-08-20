import 'models.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final Image image;
  final String desc;

  const Category({
    required this.id,
    required this.name,
    required this.desc,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, image, desc];

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Arabian',
      image: Image.asset(
        'assets/images/snack.png',
      ),
      desc: 'Dish',
    ),
    Category(
      id: 2,
      name: 'Pizza',
      image: Image.asset(
        'assets/images/pizza.png',
      ),
      desc: 'Dish',
    ),
    Category(
      id: 3,
      name: 'Biriyani',
      image: Image.asset(
        'assets/images/biriyani.png',
      ),
      desc: 'Dish',
    ),
    Category(
      id: 4,
      name: 'Burgers',
      image: Image.asset(
        'assets/images/burger.png',
      ),
      desc: 'Dish',
    ),
    Category(
      desc: 'Dish',
      id: 5,
      name: 'Drink',
      image: Image.asset(
        'assets/images/chinese.png',
      ),
    ),
    Category(
      desc: 'Dish',
      id: 6,
      name: 'Deserts',
      image: Image.asset(
        'assets/images/deserts.png',
      ),
    ),
    Category(
      id: 7,
      name: 'Drinks',
      image: Image.asset(
        'assets/images/sweets.png',
      ),
      desc: 'Dish',
    ),
    Category(
      id: 8,
      name: 'Rolls',
      image: Image.asset(
        'assets/images/north-indian.png',
      ),
      desc: 'Dish',
    ),
    Category(
      id: 9,
      name: 'Veg',
      image: Image.asset(
        'assets/images/south-indian.png',
      ),
      desc: 'Dish',
    ),
  ];
}
