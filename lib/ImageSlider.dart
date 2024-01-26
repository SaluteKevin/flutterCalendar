import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  // const ImageSlider({super.key});

  List imageList;
  int activeIndex;

  ImageSlider(this.imageList, this.activeIndex, {super.key});

  @override
  Widget build(BuildContext context) {
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
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
      ],
    );
  }

  Widget buildiImage(String imagePath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagePath,
          width: 300,
          fit: BoxFit.cover,
        ),
      );
}

setState(int Function() param0) {}
