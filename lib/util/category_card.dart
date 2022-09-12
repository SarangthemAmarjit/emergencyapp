import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iconImagesPath;
  final String categoryName;
  final Widget btnpress;
  // ignore: use_key_in_widget_constructors
  const CategoryCard({
    required this.iconImagesPath,
    required this.categoryName,
    required this.btnpress,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => btnpress));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100],
          ),
          child: Row(
            children: [
              Image.asset(
                iconImagesPath,
                height: 30,
              ),
              const SizedBox(width: 10),
              Text(categoryName),
            ],
          ),
        ),
      ),
    );
  }
}
