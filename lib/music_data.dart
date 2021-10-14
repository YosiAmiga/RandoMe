import 'package:random_me/music.dart';

class MusicData {
  //a list containing all the data of any music: picture number, name, link to playlist.
  List<Music> _restaurantBank = [
    Music(1, 'Rap Caviar',
        'https://open.spotify.com/playlist/37i9dQZF1DX0XUsuxWHRQd?si=9379af1494124db4'),
    Music(2, 'Daily Mix 1',
        'https://open.spotify.com/playlist/37i9dQZF1E35iWHO8wls5K?si=7caa4d47cb724839'),
    Music(3, 'Daily Mix 2',
        'https://open.spotify.com/playlist/37i9dQZF1E38EVzYIR4IM5?si=ff5043b0547a4b5e'),
    Music(4, 'The analysts',
        'https://open.spotify.com/show/2ZMO6QvxowltFIoZdZCk1V?si=0351c0ad388142a6'),
    Music(5, 'Gym',
        'https://open.spotify.com/playlist/3IkzJ43YVDpcoEJPq9Lqou?si=aad1da613ac6428a'),
  ];

  String getPlaylistName(int restNum) {
    return _restaurantBank[restNum - 1].musicName;
  }

  String getPlaylistLink(int restNum) {
    return _restaurantBank[restNum - 1].linkToPlaylist;
  }
}
