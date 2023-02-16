import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/course.dart';
import '../widgets/CourseContainer.dart';
import '../widgets/CustomIconButton.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Development',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          width: 35,
                          hieght: 35,
                          ontap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(

                      //
                      itemBuilder: (context, index) {
                        return CourseContiner(
                          course: courses[index],
                        );
                      },
                      separatorBuilder: (context, _) {
                        return const SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: courses.length),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
