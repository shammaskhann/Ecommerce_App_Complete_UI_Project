import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShowReview extends StatelessWidget {
  final List reviewMap;
  const ShowReview({required this.reviewMap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: reviewMap.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        blurRadius: 10)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.person),
                        const SizedBox(width: 10),
                        Text(reviewMap[index]['reviewername'],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(reviewMap[index]['review'],
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54)),
                    const SizedBox(height: 10),
                    RatingBarIndicator(
                      itemBuilder: (context, _) {
                        return const Icon(Icons.star, color: Colors.amber);
                      },
                      rating: reviewMap[index]['starRating'].toDouble(),
                      itemCount: 5,
                      itemSize: 20,
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
