import 'package:dan_music/pages/artist_detail_page.dart';
import 'package:flutter/material.dart';

class ArtistItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepPurple,
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 350),
                pageBuilder: (context, _, __) => ArtistDetailedScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Hero(
              tag: "a",
                          child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                child: CircleAvatar(
                  // backgroundColor: Colors.blueAccent,
                  // backgroundImage: ,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    child: Image.network(
                      'https://mocah.org/uploads/webp/109077-drake-views-top-music-artist-and-bands-hip-hop.jpg.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                  radius: 40,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text("John Bellion",
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
