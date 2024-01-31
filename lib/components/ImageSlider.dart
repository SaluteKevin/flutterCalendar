import 'package:calendar_app/providers/imageSliderProvider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageSlider extends StatelessWidget {
  // const ImageSlider({super.key});


  ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageSliderProvider>(
      builder: (context, value, child) {
      List imageList = value.images;
        return Column(
          children: [
            CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                final imagePath = imageList[index];
                return buildiImage(imagePath, index);
              },
              options: CarouselOptions(
                  height: 150,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom),
            ),
          ],
        );
      },
    );
  }

  Widget buildiImage(String imagePath, int index) => GestureDetector(
    child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          color: Colors.grey,
          child: Image.asset(
            imagePath,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
  );
}
