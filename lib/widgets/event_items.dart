import 'package:flutter/material.dart';

class EventItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://ddex.co.uk/wp-content/uploads/2018/10/Live-Music-Events-Stand-Design-1024x683.jpg",
                  height: 190,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text("Paris Music Festival",
                style: TextStyle(fontSize: 15, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
