import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0), 
              ),
            ),
          ),
          const SizedBox(width: 20.0),
        Expanded(
            child: CustomButton(
              fontSize: 16,
              text: 'Free Review',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}