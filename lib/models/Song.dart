import 'package:dan_music/models/Album.dart';
import 'package:dan_music/models/Artist.dart';

class Song {
  final String name;
  final Artist artist;
  final Album album;

  Song(this.name, this.artist, this.album);
}

List<Song> songs = [
  Song('Hello', Artist(), Album()),
  Song('Japa', Artist(), Album()),
];