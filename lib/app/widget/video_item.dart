import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItem extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  VideoItem({
    required this.videoPlayerController,
    this.looping = false,
    this.autoplay = false,
  });

  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItem> {
  // late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // var chewieController = ChewieController(
    //   videoPlayerController: widget.videoPlayerController,
    //   aspectRatio: 16 / 9,
    //   autoInitialize: widget.autoplay,
    //   autoPlay: widget.autoplay,
    //   looping: widget.looping,
    //   errorBuilder: (context, errorMessage) {
    //     return Center(
    //       child: Text(
    //         errorMessage,
    //         style: TextStyle(color: Colors.white),
    //       ),
    //     );
    //   },
    // );
    // _chewieController = chewieController;
  }

  @override
  void dispose() {
    super.dispose();
    // _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Chewie(
    //   controller: _chewieController,
    // );
  }
}