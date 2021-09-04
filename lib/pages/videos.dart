import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vplay/colors.dart';
import 'package:vplay/pages/player.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool isReady = false;
  dynamic video = "";


  @override
  Widget build(BuildContext context) {
    return isReady
        ? Player(
            video: video,
          )
        : Center(
            child: IconButton(
              onPressed: _getVideos,
              icon: Icon(Icons.play_arrow),
              color: cMain,
              iconSize: 80,
            ),
          );
  }

  // * initialize get videos from device

  _getVideos() async {
    // final ImagePicker _picker = ImagePicker();
    // final XFile? data = await _picker.pickVideo(source: ImageSource.gallery);

    FilePickerResult? data = await FilePicker.platform.pickFiles();

    setState(() {
      video = data;
      isReady = true;
    });
  }
}
