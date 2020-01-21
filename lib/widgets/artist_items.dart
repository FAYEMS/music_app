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
                      'https://nice-assets.s3-accelerate.amazonaws.com/smart_templates/c5f3ffbd7b78075b434b5dbc4153891b/assets/preview_5bc0919bea84e11a8643ab8d7e64f195.jpg',
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
