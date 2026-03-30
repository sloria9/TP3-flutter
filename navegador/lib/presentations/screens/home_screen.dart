import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navegador/domain/data/restaurant_repository.dart';
import 'package:navegador/domain/restaurants.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  final restaurantsRepo = RestaurantRepository();

  HomeScreen({
    super.key,
    required this.userName,
  });

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('$userName favorite restaurants'),
    ),
    body: _ListItem(restaurants: restaurantsRepo.getRestaurants())
  );
}

}

//esto es un widget custom  y se hace por fuera de la clase principal
class _ListItem extends StatelessWidget {
  final List<Restaurant> restaurants;

  //constructor para crear este widget, me tenés que pasar obligatoriamente una lista de restaurants
  const _ListItem({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];

        return ListTile(
          leading: Image.network(
            restaurant.posterUrl,
            width: 50,
            height: 75,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.broken_image);
            },
          ),
          title: Text(restaurant.name),
          subtitle: Text('${restaurant.description} - ${restaurant.review}'),
          onTap: () {
            context.push('/restaurant-details', extra: restaurant.id);
          }
        );
      },
    );
  }
}
