
import 'package:flutter/material.dart';
import 'package:joy_flutter/module_9/Widget/city_card.dart';

class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Own Widget City Card'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 10,),
              CityCard(img: 'https://cdn.pixabay.com/photo/2018/09/12/22/43/bangladesh-3673378_1280.jpg', title: 'Bangladesh', rating: '⭐ 5.0',),
              SizedBox(width: 10,),
              CityCard(img: 'https://i.dailymail.co.uk/i/pix/2015/08/12/00/2AE2A19400000578-3194354-image-a-4_1439335106556.jpg', title: 'England', rating: '⭐ 4.8',),
              SizedBox(width: 10,),
              CityCard(img: 'https://images.travelandleisureasia.com/wp-content/uploads/sites/3/2023/12/22143559/castle.jpg', title: 'Germany', rating: '⭐ 5.0',),
              SizedBox(width: 10,),
              CityCard(img: 'https://globalnews.ca/wp-content/uploads/2017/05/lights.jpg?quality=65&strip=all', title: 'Canada', rating: '⭐ 5.0',),
            ],
          ),
        ),
      ),
    );
  }
}
