import 'package:flutter/material.dart';

class Food extends StatelessWidget {
 Food({Key? key}) : super(key: key);

  List<Map> restaurantData = [
    {
      'hName' : 'Domino\'s Pizza',
      'image' : 'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/ypq9moufkhxyfdmu2pcd',
      'description' : 'Pizza',
      'rating': 5,
    },
    {
      'hName':'The Waffle Jar',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeFBEp0uOuTf3dgzK2QhufEGrqPtVuY0ZO5w&usqp=CAU',
      'description': 'Deserts,Bakery,Beverages',
      'rating': 3,
    },
    {
      'hName':'Pizza Hut',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS48Xnry2pKu3ujdMFpnMe14V0fKomHZwW9lA&usqp=CAU',
      'description': 'Pizza',
      'rating': 4,
    },
    {
      'hName':'McDonald\'s',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwhj1jMEIdVPwFLlurpIOw7w6KEk3oLrsIxg&usqp=CAU',
      'description': 'Burger,Sandwich',
      'rating': 5,
    },
    {
      'hName' : 'Rolls Mania',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBFNQVM4duDUDwUUZd9VffNvykKhdb1ld8BQ&usqp=CAU',
      'description' : 'Roll',
      'rating': 4,
    },
    {
      'hName' : 'Radha Krishna',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQezB0M3RZzpZKqYxs8UBmGDTHQ7BYpq2fISQ&usqp=CAU',
      'description' : 'North Indian, Chinese, South Indian',
      'rating': 4,
    },
    {
      'hName':'The Waffle Jar',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeFBEp0uOuTf3dgzK2QhufEGrqPtVuY0ZO5w&usqp=CAU',
      'description': 'Deserts,Bakery,Beverages',
      'rating': 3,
    },
    {
      'hName':'Pizza Hut',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS48Xnry2pKu3ujdMFpnMe14V0fKomHZwW9lA&usqp=CAU',
      'description': 'Pizza',
      'rating': 4,
    },
    {
      'hName':'McDonald\'s',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwhj1jMEIdVPwFLlurpIOw7w6KEk3oLrsIxg&usqp=CAU',
      'description': 'Burger,Sandwich',
      'rating': 5,
    },
    {
      'hName' : 'Rolls Mania',
      'image' : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBFNQVM4duDUDwUUZd9VffNvykKhdb1ld8BQ&usqp=CAU',
      'description' : 'Roll',
      'rating': 4,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: restaurantData.length,
                itemBuilder: (context, index) => rest(
                  name:restaurantData[index]['hName'],
                  image: restaurantData[index]['image'],
                  products: restaurantData[index]['description'],
                  rating: restaurantData[index]['rating'],
                )
            ),
          ),
        ),
    );
  }
}
Widget rest({
  String name = '',
  String image = '',
  int rating = 1,
  String products = '',
}){
  return Container(
    padding: EdgeInsets.all(5),
    height: 100,
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(),
          child: Image.network(image,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                style:const TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  for(int i=0;i<rating;i++)
                    const Icon(Icons.star,
                      size: 15,color: Colors.red,),
                ],
              ),
              Text(products,
                style:const TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}