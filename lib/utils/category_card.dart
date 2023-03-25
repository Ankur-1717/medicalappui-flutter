import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String iconImagePath;
  final String profession;

  CategoryCard({
    required this.iconImagePath, 
    required this.profession,
  });

  @override
  Widget build(BuildContext context) {
    var borderRadius;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                iconImagePath,
                height: 30,
              ),
            ),
            SizedBox(width: 20),
            Text(profession),
          ],
        ),
      ),
    );
  }
}
