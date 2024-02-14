import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_container.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      height: size.height * 0.18,
      // child: Image.network(
      //   'https://miro.medium.com/v2/resize:fit:1200/1*t-4WaJBkKPc2f3FP_1_QQw.png',
      //   fit: BoxFit.cover,
      // ),
      color: Colors.grey.shade50,
      child: CarouselSlider(
          disableGesture: true,
          items: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1200/1*t-4WaJBkKPc2f3FP_1_QQw.png',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1400/1*B2YiarrQLe1sjIi-2OY-Tg.png',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1358/1*prATQ_SvBgGAdBPx1F8PjQ.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Image.network(
                'https://miro.medium.com/v2/resize:fit:1200/1*t-4WaJBkKPc2f3FP_1_QQw.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.999,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
