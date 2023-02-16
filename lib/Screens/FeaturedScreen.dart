import 'package:eduapp/widgets/BodyFeaturedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/CustomAppBar.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            CustomAppBar(),
            BodyFeatured(),
          ],
        ),
      ),
    );
  }
}
