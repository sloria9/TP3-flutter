import 'package:flutter/material.dart';
import 'package:navegador/domain/data/restaurant_repository.dart';
import 'package:navegador/domain/restaurants.dart';

class RestaurantDetail extends StatelessWidget {
  final int id;
  final Restaurant restaurant;

  RestaurantDetail({super.key, required this.id})
    : restaurant =
          RestaurantRepository().getRestaurantById(id) ??
          (throw ArgumentError('Restaurant with id $id not found'));

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Restaurant details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.network(
                    restaurant.posterUrl,
                    width: double.infinity,
                    height: 320,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: double.infinity,
                        height: 320,
                        color: theme.colorScheme.surfaceContainerHighest,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.broken_image_outlined,
                          size: 42,
                        ),
                      );
                    },
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Color(0xCC1E140F)],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          restaurant.description,
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: Colors.white.withValues(alpha: 0.88),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Chip(
                  avatar: const Icon(Icons.star_rounded, size: 18),
                  label: Text('Rating ${restaurant.review}'),
                ),
                Chip(
                  avatar: const Icon(Icons.place_outlined, size: 18),
                  label: const Text('Palermo'),
                ),
                Chip(
                  avatar: const Icon(Icons.local_pizza_outlined, size: 18),
                  label: const Text('Casual dining'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About', style: theme.textTheme.titleLarge),
                    const SizedBox(height: 12),
                    Text(
                      'This restaurant is presented as a compact demo entry for the app. The layout highlights its image, review, and address in a more realistic mobile detail page.',
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 18),
                    _DetailRow(
                      icon: Icons.location_on_outlined,
                      label: 'Address',
                      value: restaurant.adress,
                    ),
                    const SizedBox(height: 14),
                    _DetailRow(
                      icon: Icons.info_outline,
                      label: 'Category',
                      value: restaurant.description,
                    ),
                    const SizedBox(height: 14),
                    _DetailRow(
                      icon: Icons.grade_outlined,
                      label: 'Review',
                      value: restaurant.review,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.of(context).maybePop(),
                icon: const Icon(Icons.arrow_back_rounded),
                label: const Text('Back to list'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: theme.colorScheme.onPrimaryContainer),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: theme.textTheme.titleMedium),
              const SizedBox(height: 4),
              Text(value, style: theme.textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
