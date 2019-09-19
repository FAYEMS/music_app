import 'package:flutter/material.dart';

class AlbumItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                ),
                child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://f4.bcbits.com/img/a2939269798_16.jpg",
                  height: 100,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Heart Break",
                style: TextStyle(fontSize: 12, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
