import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title, subtitle;

  const TopTitles({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: kToolbarHeight + 12,
        ),
        if (title == 'Login' || title == 'Create Account')

        //   const BackButton(),
        //   const SizedBox(
        //   height: 12.0,
        // ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
            child: const Icon(
          Icons.arrow_back_ios,
          size: 30,
        )),
        Text(
          title,
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18.0,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
