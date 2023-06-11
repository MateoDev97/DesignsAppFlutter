import 'dart:ui';

import 'package:flutter/material.dart';

class CardTableWidget extends StatelessWidget {
  const CardTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard('General', Colors.blue, Icons.grid_view_rounded),
            _SingleCard('Transport', Colors.purple, Icons.directions_bus),
          ],
        ),
        TableRow(
          children: [
            _SingleCard('Shoping', Colors.pink, Icons.local_mall_outlined),
            _SingleCard('Bills', Colors.orange, Icons.receipt_long),
          ],
        ),
        TableRow(
          children: [
            _SingleCard('Entertainment', Colors.grey, Icons.live_tv),
            _SingleCard('Grocery', Colors.green, Icons.local_grocery_store),
          ],
        ),
        TableRow(
          children: [
            _SingleCard('Sports', Colors.red, Icons.sports_football),
            _SingleCard(
                'Travel', Colors.deepPurpleAccent, Icons.flight_takeoff),
          ],
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(this.tileCard, this.color, this.icon);

  final String tileCard;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  tileCard,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
