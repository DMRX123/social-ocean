import 'package:flutter/material.dart';

class ReelCard extends StatelessWidget {
  final String username;
  final String caption;
  final String videoThumbnail;
  final VoidCallback onTap;

  const ReelCard({
    Key? key,
    required this.username,
    required this.caption,
    required this.videoThumbnail,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image.asset(
              videoThumbnail,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@$username",
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    caption,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Reel Card Widget
