import 'package:dan_music/widgets/app_bar.dart';
import 'package:dan_music/widgets/event_items.dart';
import 'package:dan_music/widgets/now_playing.dart';
import 'package:dan_music/widgets/song_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistDetailedScreen extends StatefulWidget {
  @override
  _ArtistDetailedScreenState createState() => _ArtistDetailedScreenState();
}

class _ArtistDetailedScreenState extends State<ArtistDetailedScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "a",
                              child: Container(
                  child: Image.network(
                    'https://nice-assets.s3-accelerate.amazonaws.com/smart_templates/c5f3ffbd7b78075b434b5dbc4153891b/assets/preview_5bc0919bea84e11a8643ab8d7e64f195.jpg',
                    height: screenHeight * 0.40,
                    width: screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              playall(context),
              body(context),
            ],
          ),
          header(context),
          NowPlaying(),
        ],
      ),
    );
  }

  Widget header(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      height: screenHeight * 0.40,
      child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomBackAppBar(),
                  ]))),
    );
  }

  Widget playall(context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      print("JKDk");
                    },
                    child: Stack(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: Text("210",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white)),
                        ),
                      ],
                    )),
                Stack(
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          print("JKDk");
                        },
                        child: Icon(
                          Icons.share,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0),
                      child: Text("210",
                          style: TextStyle(fontSize: 11, color: Colors.white)),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          print("JKDk");
                        },
                        child: Icon(
                          Icons.comment,
                          size: 20,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0),
                      child: Text("210",
                          style: TextStyle(fontSize: 11, color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  onTap: () {
                    print("JKDk");
                  },
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 30,
                  )),
              SizedBox(
                width: 10,
              ),
              Text("Play All",
                  style: TextStyle(fontSize: 17, color: Colors.white)),
              // Expanded( flex: 10, child: IconButton(onPressed: (){}, icon: Icon(Icons.playlist_play),)),
            ],
          ),
        ],
      ),
    );
  }

  Widget body(context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor: Colors.deepPurple,
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            tabs: <Widget>[
              Text("Albums",
                  style: TextStyle(fontSize: 11, color: Colors.white)),
              Text("Songs",
                  style: TextStyle(fontSize: 11, color: Colors.white)),
              Text("Videos",
                  style: TextStyle(fontSize: 11, color: Colors.white)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1, bottom: 5, left: 5, right: 5),
          child: Container(
            // color: Colors.deepPurple,
            // padding: const EdgeInsets.all(20.0),
            height: screenHeight * 0.35,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Container(
                  child: ListView.builder(
                    primary: false,
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    // controller: ScrollController(
                    //     keepScrollOffset: false, initialScrollOffset: 1),
                    // physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, counter) {
                      return SongList();
                    },
                    itemCount: 11,
                  ),
                ),
                // Text("Play All",
                //     style: TextStyle(fontSize: 17, color: Colors.white)),
                Text("Play Some",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
                Text("Play Some",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
