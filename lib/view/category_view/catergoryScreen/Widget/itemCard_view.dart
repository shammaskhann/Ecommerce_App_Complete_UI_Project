import 'package:flutter/material.dart';

import '../../../../resources/AppColor.dart';

class ExtendItemCardView extends StatelessWidget {
  final String title;
  final String tagline;
  final img;
  final double price;
  final Color imgBack;
  final VoidCallback onTap;
  const ExtendItemCardView(
      {super.key, required this.title,
      required this.tagline,
      required this.img,
      required this.imgBack,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, left: 30),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: imgBack,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.contain),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.black100,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        tagline,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.black20,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      Text(
                        'Starting from',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColor.black20,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '\$ $price/KG',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColor.secondaryColor,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
