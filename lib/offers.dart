import 'package:flutter/material.dart';
class Offers extends StatelessWidget {
  Offers({Key? key}) : super(key: key);

  List<Map> data = [
    {
      'offer1' : '20% Off',
      'image1' : 'https://lh3.googleusercontent.com/p/AF1QipNhABaMqTEto7TqtBvcvG6YPKSA-jZ4gjEBlckn=s1280-p-no-v1',

    },
    {
      'offer1' : '50% Off',
      'image1' : 'https://cdn4.vectorstock.com/i/thumb-large/28/08/fast-food-snacks-takeaway-delivery-menu-vector-24512808.jpg',
    },
    {
      'offer1' : '30% Off',
      'image1' : 'https://media.istockphoto.com/vectors/fast-food-meal-combo-special-offer-vector-id1060381254',
    },
    {
      'offer1' :'20% Off',
      'image1': 'https://cdn2.vectorstock.com/i/thumb-large/82/11/fast-food-hand-drawn-special-offer-vector-8878211.jpg',

    },
    {
      'offer1' : '60% Off',
      'image1' : 'https://lh5.googleusercontent.com/GK8tJzF1cSp7KePCtjqcu1tICbLm_g3ER-znYVCy8JbbRXYSTMXxE_KkkOSCaTFUk5MaY_OICntrJ_FkBEbVuJXPQA7B-h_rqQuJrOSv-ebcu-1kBIHWrFy1ZyeyPI5Hg6qilVVq',
    },
    {
      'offer1' : 'Best Offer',
      'image1' : 'https://img.freepik.com/free-vector/vector-hand-drawn-illustration-fast-food-cafe-special-offer-advertising-banner-design-with-pizza_191504-804.jpg?size=338&ext=jpg',
    },
    {
      'offer1' : '20% Off',
      'image1' : 'https://lh3.googleusercontent.com/p/AF1QipNhABaMqTEto7TqtBvcvG6YPKSA-jZ4gjEBlckn=s1280-p-no-v1',

    },
    {
      'offer1' : '50% Off',
      'image1' : 'https://cdn4.vectorstock.com/i/thumb-large/28/08/fast-food-snacks-takeaway-delivery-menu-vector-24512808.jpg',
    },
    {
      'offer1' : '30% Off',
      'image1' : 'https://media.istockphoto.com/vectors/fast-food-meal-combo-special-offer-vector-id1060381254',
    },
    {
      'offer1' :'20% Off',
      'image1': 'https://cdn2.vectorstock.com/i/thumb-large/82/11/fast-food-hand-drawn-special-offer-vector-8878211.jpg',

    },
    {
      'offer1' : '60% Off',
      'image1' : 'https://lh5.googleusercontent.com/GK8tJzF1cSp7KePCtjqcu1tICbLm_g3ER-znYVCy8JbbRXYSTMXxE_KkkOSCaTFUk5MaY_OICntrJ_FkBEbVuJXPQA7B-h_rqQuJrOSv-ebcu-1kBIHWrFy1ZyeyPI5Hg6qilVVq',
    },
    {
      'offer1' : 'Best Offer',
      'image1' : 'https://img.freepik.com/free-vector/vector-hand-drawn-illustration-fast-food-cafe-special-offer-advertising-banner-design-with-pizza_191504-804.jpg?size=338&ext=jpg',
    },
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: GridView.builder(
          itemCount: data.length,
          padding: const EdgeInsets.all(20.0),
            gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => discounts(
              image:data[index]['image1'],
              type: data[index]['offer1'],
            ),
        ),
      ),
    );
  }
}


Widget discounts({
  String image = '',
  String type = '',
}){
  return Container(
    height: 160,
    width: 150,
    decoration:const BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.blue,width: 2)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 130,
          child: Image.network(image,
            width: 120,
            fit: BoxFit.fill,

          ),
        ),
        Text(type,style: TextStyle(fontSize: 17,color: Colors.red),),
      ],
    ),
  );
}
