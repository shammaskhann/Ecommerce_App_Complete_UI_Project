import 'package:flutter/material.dart';

import '../../../resources/AppColor.dart';

class StandardAppBar extends StatelessWidget {
  final String title;
  const StandardAppBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => {Navigator.pop(context, true)},
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColor.black10,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              color: AppColor.black100),
        )
      ],
    );
  }
}
