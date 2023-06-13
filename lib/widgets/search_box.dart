import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Name Your Mood...',
              suffixIcon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              contentPadding: const EdgeInsets.only(
                left: 5,
                bottom: 5,
                top: 14,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          height: 50,
          width: 50,
          child: IconButton(
            icon: const Icon(Icons.menu,),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
