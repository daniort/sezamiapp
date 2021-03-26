import 'package:cached_network_image/cached_network_image.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:sezamiapp/services/user_services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget verBannerGrande() {
  return Container(
    padding: EdgeInsets.only(top: 0.0),
    color: Colors.white,
    width: double.infinity,
    height: 600,
    child: FutureBuilder(
      future: UserServices().getBannerBig(),
      // ignore: missing_return
      builder: (context, snap) {
        if (snap.hasError)
          return Container(child: Image.asset('images/banner/cone.png'));
        switch (snap.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
            break;
          case ConnectionState.none:
            return Container(child: Image.asset('images/banner/cone.png'));
            break;
          case ConnectionState.done:
            if (snap.data.isEmpty)
              return Container(child: Image.asset('images/banner/cone.png'));
            else
              return caruselBig(snap.data);
            break;
          default:
            return Container(child: Image.asset('images/banner/cone.png'));
            break;
        }
      },
    ),
  );
}

Future<void> saveIma(String url) async {
  try {
    await ImageDownloader.downloadImage(url);
  } catch (error) {
    print(error);
  }
}

Widget caruselBig(List data) {
  return CarouselSlider(
    items: data.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl: i,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Container(
                          child: Image.asset('images/banner/cone.png')),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () => saveIma(i),
                    child: Opacity(
                      opacity: 0.4,
                      child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 30,
                          width: 150,
                          color: Colors.grey[700],
                          child: Center(
                            child: Text(
                              'Guardar Imagen',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }).toList(),
    options: CarouselOptions(
      height: 400,
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 12),
      autoPlayAnimationDuration: Duration(seconds: 1),
      autoPlayCurve: Curves.fastOutSlowIn,
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget caruselMini(List data) {
  return CarouselSlider(
    items: data.map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white.withOpacity(1.0),
                    context: context,
                    isScrollControlled: false,
                    isDismissible: false,
                    enableDrag: false,
                    builder: (context) => verBannerGrande());
              },
              child: CachedNetworkImage(
                imageUrl: i,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Container(child: Image.asset('images/banner/cone.png')),
              ),
            ),
          );
        },
      );
    }).toList(),
    options: CarouselOptions(
      height: 400,
      aspectRatio: 16 / 9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 12),
      autoPlayAnimationDuration: Duration(seconds: 1),
      autoPlayCurve: Curves.fastOutSlowIn,
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget dividerSeccion(String label) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(children: <Widget>[
      Expanded(
        child: Divider(
          color: Color(0xFF0076a6),
        ),
      ),
      Expanded(
        flex: 2,
        child: Center(
            child: Text(
          label,
          style: TextStyle(
            color: Color(0xFF0076a6),
          ),
        )),
      ),
      Expanded(
        child: Divider(
          color: Color(0xFF0076a6),
        ),
      ),
    ]),
  );
}

Widget requitoPrograma(String label) {
  return ListTile(
    title: Text(
      label,
      style: TextStyle(fontSize: 13.0),
    ),
    leading: Icon(Icons.done),
  );
}
