class ContentModel {
  String image;
  String title;
  String desc;

  ContentModel({required this.image, required this.title, required this.desc});
}

List<ContentModel> contents = [
  ContentModel(
    image: 'assets/images/onboard1.png',
    title: 'All your favourites restaurants',
    desc:
        'Order from the best local restaurants with ease and on-demand delivery',
  ),
  ContentModel(
    image: 'assets/images/onboard2.png',
    title: 'Unmatched reliability',
    desc: 'Experience peace of mind while tracking your order in real time',
  ),
  ContentModel(
    image: 'assets/images/onboard3.png',
    title: '24/7 support for you',
    desc: 'Something came up? Talk to a real person. We are here to help',
  ),
  ContentModel(
    image: 'assets/images/onboard4.png',
    title: 'Eat it in your own cozy comfort',
    desc:
        'Want a food of your mood? Get your tummies filled with the edible good',
  ),
];
