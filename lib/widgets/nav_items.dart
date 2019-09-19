import 'package:flutter/material.dart';

class NavItems extends StatefulWidget {
  final String name;
  final IconData icon;
  final Function onTap;

  NavItems({this.name, this.icon, this.onTap});

  @override
  _NavItemsState createState() => _NavItemsState();
}

class _NavItemsState extends State<NavItems> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //   child: Row(
    //     children: <Widget>[
    //       Icon(widget.icon, color: Colors.white,),
    //       SizedBox(width: 10,),
    //       Text(widget.name),
    //     ],
    //   ),
    // );
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          
          Icon(widget.icon),
          SizedBox(
            width: 30,
          ),
          InkWell(
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
