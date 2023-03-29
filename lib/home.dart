import 'package:flutter/material.dart';
import 'utils.dart';
import 'Song.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var w;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: black,
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(height: 50),
            heading(),
            const SizedBox(height: 50),
            const SizedBox(height: 5),
            Divider(
              color: Colors.grey[600],
              thickness: 1,
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView(
                children: List.generate(10, (int index) {
                  return Column(children: const [
                    Song(
                      title: "Title",
                      artist: "Artist",
                      duration: "1:36",
                      imageURL: "assets/coffee-shop-bg.jpeg",
                      audioURL: "assets/jazz-1.mp3",
                    ),
                    const SizedBox(height: 15),
                  ]);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: w * 0.3,
          height: w * 0.3,
          child: ClipRect(
            child: OverflowBox(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/coffee-shop-bg.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 25),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Public Playlist",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                "Instrumental Coffee House Background Jazz Music",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Smooth, relaxing, easy listening background jazz for your coffee shop, cafe, or lounge.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Honza Jaros",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget subheading() {
    return Row(
      children: [
        Text("Title", style: TextStyle(color: Colors.grey)),
        Text("Duraction", style: TextStyle(color: Colors.grey))
      ],
    );
  }
}
