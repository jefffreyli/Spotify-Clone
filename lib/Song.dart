import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Song extends StatefulWidget {
  final String title;
  final String artist;
  final String duration;
  final String imageURL;
  final String audioURL;

  const Song({
    Key? key,
    required this.title,
    required this.artist,
    required this.duration,
    required this.imageURL,
    required this.audioURL,
  }) : super(key: key);

  @override
  _SongState createState() => _SongState();
}

class _SongState extends State<Song> {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: IconButton(
            icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
            onPressed: () {
              setState(() {
                isPlaying = !isPlaying;
              });

              if (isPlaying) {
                if (!assetsAudioPlayer.isPlaying.value) {
                  // print('opening audio...');
                  assetsAudioPlayer.open(Audio.network(widget.audioURL));
                } else {
                  // print('resuming audio...');
                  assetsAudioPlayer.play();
                }
              } else {
                // print('pausing audio...');
                assetsAudioPlayer.pause();
              }
            },
          ),
        ),
        SizedBox(width: 30.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            widget.imageURL,
            height: 70.0,
            width: 70.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                widget.artist,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Text(
          widget.duration,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}
