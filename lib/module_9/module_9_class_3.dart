import 'package:flutter/material.dart';
import 'Widget/city_card.dart';
class ContainerStackImage extends StatelessWidget {
  const ContainerStackImage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Container Stack Image '),
      ),
      body: Center(
        child: Column(
          children: [
            //CityCard(img: '',, title: '',, rating: '',),
           // SizedBox(height: 20,),
           // CityCard(img: '',, title: '',, rating: '',),
          ],
        ),
      ),
    );
  }
}


