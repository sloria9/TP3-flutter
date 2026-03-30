import 'package:navegador/domain/restaurants.dart';

class RestaurantRepository {
  List<Restaurant> getRestaurants(){
    return [
      Restaurant(
        id: 1,
        name: 'Caprichito',
        description: 'Restaurante & Pizzeria',
        adress: 'Hondura 5684, Palermo',
        posterUrl:
            'https://image.tmdb.org/t/p/w500/uRRTV7p6l2ivtODWJVVAMRrwTn2.jpg',
        review: '3/5',
      ),
      Restaurant(
        id: 2,
        name: 'Caprichito',
        description: 'Restaurante & Pizzeria',
        adress: 'Hondura 5684, Palermo',
        posterUrl:
            'https://image.tmdb.org/t/p/w500/uRRTV7p6l2ivtODWJVVAMRrwTn2.jpg',
        review: '3/5',
      ),
      Restaurant(
        id: 3,
        name: 'Caprichito',
        description: 'Restaurante & Pizzeria',
        adress: 'Hondura 5684, Palermo',
        posterUrl:
            'https://image.tmdb.org/t/p/w500/uRRTV7p6l2ivtODWJVVAMRrwTn2.jpg',
        review: '3/5',
      ),
    ];
  }

  Restaurant? getRestaurantById(int id) {
  for (final restaurant in getRestaurants()) {
    if (restaurant.id == id) {
      return restaurant;
    }
  }
  return null;
}
}