import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:moment/global.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'http://pickupimage.com/data/photo/2013/10/13/Iceland-Landscape-spring-panorama-at-sunset-1013137EEFB8CCC6.jpg',
      'http://pickupimage.com/data/photo/2015/1/30/013015C-2590-D31A-4093EB1B6DB0D7EC.jpg',
      'http://pickupimage.com/data/photo/2015/4/4/0404159-2590-D31A-4090F0E6014AE3F9.jpg'
    ];

    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            More(text: 'Discovery', onTap: () {}),
            Container(
              height: 240,
              child: Swiper(
                viewportFraction: 0.8,
                scale: 0.85,
                autoplay: true,
                autoplayDelay: 4000,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: FadeInImage(
                        image: NetworkImage(images[index]),
                        fit: BoxFit.cover,
                        placeholder: AssetImage('assets/images/loading.gif'),
                      ),
                    ),
                  );
                },
                itemCount: images.length,
              ),
            ),
            More(text: 'Moments', onTap: () {}),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(left: 4.0, bottom: 10.0, right: 4.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width - 100,
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: FadeInImage(
                      image: NetworkImage('https://cdn.nlark.com/yuque/0/2019/jpeg/124360/1561544455524-assets/web-upload/cce79318-aaca-48d9-8374-4cb660733c8f.jpeg'),
                      fit: BoxFit.fitWidth,
                      placeholder: AssetImage('assets/images/loading.gif'),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Title'),
                    subtitle: Text('Subtitle'),
                    trailing: Text('Trailing'),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
