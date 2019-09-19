import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 60,
      child: Padding(
        padding:
              const EdgeInsets.only(bottom: 10.0, left: 10, top: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                          CircleAvatar(
                  backgroundColor: Colors.black,
                  child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  child: Image.network(
                    'https://www.udiscovermusic.com/wp-content/uploads/2018/09/Drake-Nothing-Was-The-Same-deluxe-album-cover-web-optimised-820.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                  radius: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                                "Enqisition",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white))),
                                    SizedBox(height: 1,),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                                "24 Songs",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white))),
                      ],
                    )),
                     SizedBox(
                  width: 20,
                ),InkWell(
              onTap: () {
                print("JKDk");
              },
              child: Icon(
                Icons.favorite,
                size: 20,
              )),
          ],
        ),
      ),

    );
  }
}
