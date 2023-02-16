import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../models/category.dart';
import 'CategoryCard.dart';

class BodyFeatured extends StatelessWidget {
  const BodyFeatured({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore Categories ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See ALL',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor), // اشوف دي
                ),
              ),
            ],
          ),
        ), // واقفين هنا
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          itemCount: categoryList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            childAspectRatio: 0.8, // اشوف دي
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          },
        )
      ],
    );
  }
}
