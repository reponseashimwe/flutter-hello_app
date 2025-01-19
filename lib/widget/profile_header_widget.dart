import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // Cover Image
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1555066931-4365d14bab8c?q=80&w=2070',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Profile Image
        Positioned(
          bottom: -60,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                'https://drive.google.com/uc?export=view&id=1Sx32gcAqfg0WYc-Itvcr7qZfgLm7qEfa',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
 