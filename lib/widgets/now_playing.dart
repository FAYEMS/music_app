import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  double screenHeight;
  NowPlaying({this.screenHeight});
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> with SingleTickerProviderStateMixin{
  AnimationController _controller;
  Animation _heightAnimation;
  bool isExpanded = false;
  
  

  checkIfExpanded(status){
    if(status == AnimationStatus.completed){
      isExpanded = true;
    }
  }

  @override
  void initState(){ 
    // screenHeight = MediaQuery.of(context).size.height/2;
    print(widget.screenHeight);
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _heightAnimation = Tween<double>(begin: 80, end: widget.screenHeight).animate(_controller);

    _controller.addStatusListener(checkIfExpanded);
  super.initState()
    ;
  }

  onTap(){
    setState(() {
      if(isExpanded){
        _controller.reverse();
      }else{
      _controller.forward();
      }
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context){

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, widget) {
        return GestureDetector(
          onTap: (){
            onTap();
          },
                  child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration( color: Colors.deepPurple, borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
              height: _heightAnimation.value,
              
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/4/43/Eminem_-_Survival_Artwork.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 5,
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
                                    "Gelato Featuring Zlatan Ibile and Yemi Alade",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white))),
                                        SizedBox(height: 1,),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                    "Dj Cuppy, Mavins Record",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white))),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.pause,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }

}