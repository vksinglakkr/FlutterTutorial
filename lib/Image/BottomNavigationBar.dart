import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QueBottom extends StatefulWidget {
  final String urlName, imageName, videoUrlId;
  const QueBottom({key, this.urlName, this.imageName, this.videoUrlId});
  @override
  _QueBottomState createState() => _QueBottomState();
}

class _QueBottomState extends State<QueBottom> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      //type: BottomNavigationBarType.shifting,
      iconSize: 20,
      selectedFontSize: 14,
      unselectedFontSize: 14,

      backgroundColor: Colors.deepPurple,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'Info1',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.image),
          label: 'Image',
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.play_arrow),
          label: 'Video',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setState(
          () {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              launch(widget.urlName);
//                  '');
            } else if (_selectedIndex == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyAppImage(image1: widget.imageName)));
            } else if (_selectedIndex == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyAppVideo(video1: widget.videoUrlId)));
            }
          },
        );
      },
    );
  }
}

class MyAppVideo extends StatelessWidget {
  final String video1;
  const MyAppVideo({key, this.video1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: this.video1,
          flags: YoutubePlayerFlags(autoPlay: true, mute: false),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class MyAppImage extends StatelessWidget {
  final String image1;
  const MyAppImage({key, this.image1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(child: Image.asset(this.image1)),
      floatingActionButton: WidgetFab(),
    );
  }
}

class WidgetFab extends StatelessWidget {
  const WidgetFab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.purple.shade300,
      tooltip: "Go Back",
      onPressed: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.first_page),
    );
  }
}
