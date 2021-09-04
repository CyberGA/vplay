import 'package:flutter/material.dart';
import 'package:vplay/colors.dart';
import 'package:vplay/pages/audio.dart';
import 'package:vplay/pages/browse.dart';
import 'package:vplay/pages/more.dart';
import 'package:vplay/pages/playlists.dart';
import 'package:vplay/pages/videos.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: cBackground,
            elevation: 0,
            title: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              leading: Image.asset(
                "assets/icon.png",
                height: 35,
                fit: BoxFit.contain,
              ),
              title: Text(
                "VPLAY",
                style: TextStyle(
                    color: cWhite, fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: cWhite,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_circle_outline_outlined),
                color: cWhite,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: cWhite,
              ),
            ],
          ),
          body: TabBarView(
            children: [Video(), Audio(), Browse(), Playlists(), More()],
          ),
          bottomNavigationBar: BottomAppBar(
            color: cBackground,
            child: TabBar(
                labelColor: cMain,
                unselectedLabelColor: cWhite,
                indicatorColor: cMain,
                tabs: [
                  Tab(
                    icon: Icon(Icons.movie),
                    text: "Video",
                  ),
                  Tab(
                    icon: Icon(Icons.audiotrack),
                    text: "Audio",
                  ),
                  Tab(
                    icon: Icon(Icons.theaters),
                    text: "Browse",
                  ),
                  Tab(
                    icon: Icon(Icons.playlist_play),
                    text: "Playlists",
                  ),
                  Tab(
                    icon: Icon(Icons.more_horiz),
                    text: "More",
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
