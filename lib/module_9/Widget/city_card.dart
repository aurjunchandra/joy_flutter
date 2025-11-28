import 'package:flutter/material.dart';
class CityCard extends StatelessWidget {
  final String img, title, rating;
  const CityCard({
    super.key, required this.img, required this.title, required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage(img))
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin:Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54])
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 40,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 40,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.all(10)
                    ),
                    onPressed: (){}, child: Text( rating)),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.red,))
              ],
            ),
          )
        ],
      ),
    );
  }
}