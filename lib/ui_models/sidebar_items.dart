import 'package:flutter/material.dart';

class SideBarItems {
  String name;
  IconData icon;
  Function isTap;

  SideBarItems({this.name, this.icon, this.isTap});
}

List<SideBarItems> navItems = [
  SideBarItems(name: "Home", icon: Icons.home),
  SideBarItems(name: "Recents", icon: Icons.recent_actors),
  SideBarItems(name: "Playlists", icon: Icons.playlist_add_check),
  SideBarItems(name: "Artists", icon: Icons.art_track),
  SideBarItems(name: "Albums", icon: Icons.album),
  SideBarItems(name: "Favorites", icon: Icons.favorite),
  SideBarItems(name: "Events", icon: Icons.event),
];
