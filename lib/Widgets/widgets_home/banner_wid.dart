import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MiBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return new Carousel(
      dotColor: Colors.white,
      dotBgColor: Colors.grey.withOpacity(0.5),
      images: [
        InkWell(
          onTap: () => {
            showModalBottomSheet(
                elevation: (queryData.size.height),
                //backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                backgroundColor: Colors.white.withOpacity(0.0),
                context: context,
                isScrollControlled: true,

                builder: (context) {
                  //eturn Calendario();
                  return Img1();
                }),
          },
          child: Container(
            child: Image.asset('images/banner/apoBanner.jpg'),
          ),
        ),
        InkWell(
          onTap: () => {
            showModalBottomSheet(
                elevation: (queryData.size.height),
                //backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                backgroundColor: Colors.white.withOpacity(0.0),

                //shape:
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  //eturn Calendario();
                  return Img2();
                }),
          },
          child: Container(
            child: Image.asset('images/banner/capmBanner.jpg'),
          ),
        ),
        InkWell(
          onTap: () => {
            showModalBottomSheet(
                elevation: (queryData.size.height),
                //backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                backgroundColor: Colors.white.withOpacity(0.0),
  
                //shape:
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  //eturn Calendario();
                  return Img3();
                }),
          },
          child: Container(
            child: Image.asset('images/banner/coeeBanner.jpg'),
          ),
        ),
      ],
    );
  }
}

class Img1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: queryData.size.width,
        height: (queryData.size.height)*.8,
        child: Center(
          child: Image.asset('images/banner/apoSrc.jpg', width: (queryData.size.width)*.85),
        ),
      ),
    );
  }
}

class Img2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
         color: Colors.white,
         
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: queryData.size.width,
        height: (queryData.size.height)*.8,
        child: Center(
          child: Image.asset('images/banner/capmSrc.jpg', ),
        ),
      ),
    );
  }
}
class Img3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        width: queryData.size.width,
        height: (queryData.size.height)*.8,
        child: Center(
          child: Image.asset('images/banner/coeeSrc.jpg', ),
        ),
      ),
    );
  }
}