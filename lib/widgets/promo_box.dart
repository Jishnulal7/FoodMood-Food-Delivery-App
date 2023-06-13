import 'package:flutter/material.dart';
import 'package:food_delivery/models/promo_model.dart';

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
          decoration: BoxDecoration(
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
            width: MediaQuery.of(context).size.width - 55,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
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

class PromoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(185, size.height);
    path.lineTo(240, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
