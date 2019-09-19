import 'package:dan_music/models/Artist.dart';
import 'package:dan_music/ui_models/sidebar_items.dart';
import 'package:dan_music/widgets/album_items.dart';
import 'package:dan_music/widgets/app_bar.dart';
import 'package:dan_music/widgets/artist_items.dart';
import 'package:dan_music/widgets/event_items.dart';
import 'package:dan_music/widgets/nav_items.dart';
import 'package:dan_music/widgets/now_playing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height/2;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // sidebarmenu(context),
          dashboard(context),
          NowPlaying(screenHeight: screenHeight,),
        ],
      ),
    );
  }

  Widget appBar() {}

  Widget sidebarmenu(context) {
    return Material(
      color: Colors.black45,
      elevation: 4,
      child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Sarah Dustin", style: TextStyle(fontSize: 22))
                ],
              ),
              NavItems(name: navItems[0].name, icon: navItems[0].icon),
              NavItems(name: navItems[1].name, icon: navItems[0].icon),
              NavItems(name: navItems[3].name, icon: navItems[0].icon),
              NavItems(name: navItems[4].name, icon: navItems[0].icon),
              NavItems(name: navItems[5].name, icon: navItems[0].icon),
            ],
          )),
    );
  }

  Widget dashboard(context) {
    return Material(
      elevation: 4,
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                CustomAppBar(),
                SizedBox(
                  height: 30,
                ),
                SectionHeaders(
                  title: "Events",
                  numberNew: 3,
                ),
                Container(
                  height: 230,
                  child: PageView.builder(
                    // physics: ClampingScrollPhysics(),
                    controller:
                        PageController(initialPage: 0, viewportFraction: 0.7),
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    itemBuilder: (context, counter) {
                      return EventItems();
                    },
                    itemCount: 5,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SectionHeaders(
                  title: "Artists",
                  numberNew: 32,
                ),
                Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // physics: ClampingScrollPhysics(),
                      // primary: false,
                      // controller: PageController(
                      //     initialPage: 1, viewportFraction: 0.30),
                      // scrollDirection: Axis.horizontal,
                      // pageSnapping: true,
                      primary: false,
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, counter) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ArtistItems(),
                        );
                      },
                      itemCount: 10,
                    )),
                SectionHeaders(
                  title: "Albums",
                  numberNew: 2,
                ),
                Container(
                    height: 130,
                    child: ListView.builder(
                      // physics: ClampingScrollPhysics(),
                      // controller: PageController(
                      //     initialPage: 1, viewportFraction: 0.35),
                      scrollDirection: Axis.horizontal,
                      // pageSnapping: true,
                      primary: false,
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, counter) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: AlbumItems(),
                        );
                      },
                      itemCount: 6,
                    )),
                SectionHeaders(
                  title: "Videos",
                  numberNew: 4,
                ),
                Container(
                    height: 120,
                    child: PageView.builder(
                      // physics: ClampingScrollPhysics(),
                      controller: PageController(
                          initialPage: 1, viewportFraction: 0.30),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      itemBuilder: (context, counter) {
                        return ArtistItems();
                      },
                      itemCount: 6,
                    )),
                SectionHeaders(
                  title: "Songs",
                  numberNew: 14,
                ),
                Container(
                    height: 120,
                    child: PageView.builder(
                      // physics: ClampingScrollPhysics(),
                      controller: PageController(
                          initialPage: 1, viewportFraction: 0.30),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      itemBuilder: (context, counter) {
                        return ArtistItems();
                      },
                      itemCount: 6,
                    )),
                SectionHeaders(
                  title: "Playlist",
                  numberNew: 6,
                ),
                Container(
                    height: 120,
                    child: PageView.builder(
                      // physics: ClampingScrollPhysics(),
                      controller: PageController(
                          initialPage: 1, viewportFraction: 0.30),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      itemBuilder: (context, counter) {
                        return ArtistItems();
                      },
                      itemCount: 6,
                    )),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
