import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Icon(Icons.menu),
        Text(
          "BOOM",
          style: TextStyle(color: Colors.white),
        ),
        Icon(Icons.search)
      ],
    );
  }
}

class CustomBackAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.transparent,
      color: Colors.transparent,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: InkWell( 
              onTap: (){
                Navigator.of(context).pop();
                print("object");
              },
              radius: 600,
              borderRadius: BorderRadius.all(Radius.circular(100)) 
              , child: Icon(Icons.arrow_back_ios , size: 20,)),
          ),
          
          // Text(
          //   "BOOM",
          //   style: TextStyle(color: Colors.white),
          // ),
          Icon(Icons.search)
        ],
      ),
    );
  }
}

class SectionHeaders extends StatelessWidget {
  final String title;
  final int numberNew;
  SectionHeaders({this.title, this.numberNew});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          Text("New($numberNew)",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}

