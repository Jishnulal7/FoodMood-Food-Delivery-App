import 'package:flutter/material.dart';
import 'package:food_mood_app/widgets/promo_clipper.dart';

import '../models/promo_model.dart';

class PromoBox extends StatelessWidget {
  final Promo promos;
  const PromoBox({
    super.key,
    required this.promos,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width - 55,
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10),
            color: Theme.of(context).primaryColor,
            image: DecorationImage(
              image: AssetImage(
                promos.imageAsset,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipPath(
          clipper: PromoClipper(),
          child: Container(
            margin: const EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 125),
              child: Column(
                children: [
                  Text(promos.title,
                      style: Theme.of(context).textTheme.labelSmall),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    promos.description,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
