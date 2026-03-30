import 'package:flutter/material.dart';
import 'package:navegador/domain/data/restaurant_repository.dart';
import 'package:navegador/domain/restaurants.dart';

class RestaurantDetail extends StatelessWidget{
  final int id;
  final RestaurantRepository restaurantRepo;
  final Restaurant restaurant;

  RestaurantDetail({
    super.key,
    required this.id,
  }) : restaurantRepo = RestaurantRepository(),
     restaurant = RestaurantRepository().getRestaurantById(id) ?? 
                    (throw ArgumentError('Restaurant with id $id not found'));


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}