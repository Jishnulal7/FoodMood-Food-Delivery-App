import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'Personal Information',
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16),
            ),
            const SizedBox(
              width: 10,
            ),
            // const Divider(
            //   thickness: 10,
            //   height: 1,
            //   color: Colors.black,
            // )
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(
                    'assets/images/michael-dam-mEZ3PoFGs_k-unsplash.jpg',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 100,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const InkWell(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  label: Text(
                    'Name',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16),
                  ),
                  suffixIcon: TextButton(
                    child: Text(
                      'Edit',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 14),
                    ),
                    onPressed: () {},
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text(
                  'Phone Number',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 16),
                ),
                suffixIcon: TextButton(
                  child: Text(
                    'Edit',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(fontSize: 14),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  label: Text(
                    'Email',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 16),
                  ),
                  suffixIcon: TextButton(
                    child: Text(
                      'Edit',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 14),
                    ),
                    onPressed: () {},
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
