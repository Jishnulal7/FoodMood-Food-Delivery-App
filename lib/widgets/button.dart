import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: Theme.of(context).primaryColor),
              bottom: BorderSide(color: Theme.of(context).primaryColor),
              right: BorderSide(color: Theme.of(context).primaryColor),
              left: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Cancel',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class OrangeButton extends StatelessWidget {
  const OrangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        border: Border(
          top: BorderSide(color: Theme.of(context).primaryColor),
          bottom: BorderSide(color: Theme.of(context).primaryColor),
          right: BorderSide(color: Theme.of(context).primaryColor),
          left: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'Update',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
