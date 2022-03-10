import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Map> data = [
    {
      'image1':
          'https://content3.jdmagicbox.com/comp/pune/q1/020pxx20.xx20.170121144118.q3q1/catalogue/mojo-pizza-aundh-pune-pizza-restaurants-30taif3aok.jpg',
      'item1': 'Pizza',
      'image2':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuyxD7xxfANQJyDNg19ntAPeLHwfrzZ0L56A&usqp=CAU',
      'item2': 'Burger',
    },
    {
      'image1':
          'https://www.licious.in/blog/wp-content/uploads/2020/12/Spicy-Chicken-Sandwich.jpg',
      'item1': 'Sandwich',
      'image2':
          'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/h3av5syuw4cqwgxeqw8r',
      'item2': 'Chinese',
    },
    {
      'image1':
          'https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg',
      'item1': 'Biryani',
      'image2':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiFJ_RC8W4Dlmuu3_X0vVisGtlxLswgLexmA&usqp=CAU',
      'item2': 'Veg',
    },
    {
      'image1':
          'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/ae3qqfev6j7hzhxw6if3',
      'item1': 'Ice-Cream',
      'image2':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvBZXuhUQ0UxsTJeD0ga72cBZtGuE8Q4QR7w&usqp=CAU',
      'item2': 'Juice',
    },
    {
      'image1':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSowvtjjMTsCn2E1ywcjiTvHJ1WwH0lmukeSQ&usqp=CAU',
      'item1': 'South Indian',
      'image2':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4SkT7KWsf69XXQJqxHnF5LtVpdzaHNNDsig&usqp=CAU',
      'item2': 'North Indian',
    },
    {
      'image1':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRl3EgIQbIyNsyPs2XYKbIUTWAC8R98ukijw&usqp=CAU',
      'item1': 'Cakes',
      'image2':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSDYT68s04vYAzXDKJcStnzHrY4zGZqgq_sA&usqp=CAU',
      'item2': 'Rolls',
    },
  ];

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

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal: 8.0,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFe0e0e0),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.red,
                                size: 30,
                              ),
                              hintText: 'Search for Food and Restaurant',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                              floatingLabelAlignment:
                                  FloatingLabelAlignment.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFe0e0e0),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: const Icon(
                          Icons.sort,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: data.length,
                            itemBuilder: (context, index) => items(
                              image1: data[index]['image1'],
                              item1: data[index]['item1'],
                              image2: data[index]['image2'],
                              item2: data[index]['item2'],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: const [
                              Icon(Icons.food_bank_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Restaurants',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 230,
                            child: ListView.builder(
                              itemCount: restaurantData.length,
                              itemBuilder: (context, index) => restaurant(
                                  name:restaurantData[index]['hName'],
                                  image: restaurantData[index]['image'],
                                  products: restaurantData[index]['description'],
                                  rating: restaurantData[index]['rating'],
                                )
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget items({
  String image1 = '',
  String item1 = '',
  String image2 = '',
  String item2 = '',
}) {
  return Container(
    width: 150,
    height: 200,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                image1,
                fit: BoxFit.fitHeight,
                height: 100,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item1,
                style: const TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                image2,
                fit: BoxFit.fitWidth,
                height: 100,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item2,
                style: const TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


Widget restaurant({
  String name ='',
  String image = '',
  String products = '',
  int rating = 1,
})
{
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
