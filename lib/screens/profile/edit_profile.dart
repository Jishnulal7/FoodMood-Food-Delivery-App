import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/button.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

int activeFieldIndex = -1;
bool showContainerButton = false;

class _EditProfileState extends State<EditProfile> {
  void setActiveFieldIndex(int index) {
    setState(() {
      activeFieldIndex = index;
    });
  }

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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    child: InkWell(
                      onTap: () {},
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
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
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
                    onPressed: () {
                      setActiveFieldIndex(0);
                    },
                  ),
                ),
              ),
            ),
            if (activeFieldIndex == 0)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OrangeButton(),
                  WhiteButton(),
                ],
              ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
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
                    onPressed: () {
                      setActiveFieldIndex(1);
                    },
                  ),
                ),
              ),
            ),
            if (activeFieldIndex == 1)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OrangeButton(),
                  WhiteButton(),
                ],
              ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                  ),
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
                    onPressed: () {
                      setActiveFieldIndex(2);
                    },
                  ),
                ),
              ),
            ),
            if (activeFieldIndex == 2)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OrangeButton(),
                  WhiteButton(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
