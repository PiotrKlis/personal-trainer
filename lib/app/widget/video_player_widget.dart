import 'package:flutter/material.dart';
import 'package:personal_trainer/app/util/dimens.dart';
import 'package:personal_trainer/data/mux/mux_strings.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String playbackId;

  const VideoPlayerWidget({Key? key, required this.playbackId})
      : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    String path = '$muxStreamBaseUrl/${widget.playbackId}.$videoExtension';
    _videoPlayerController = VideoPlayerController.network(path,
        // useCache: true,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {
          _videoPlayerController.play();
        });
      });
    _videoPlayerController.setLooping(true);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _videoPlayerController.value.isInitialized
        ? GestureDetector(
            onTap: () {
              _videoPlayerController.value.isPlaying
                  ? _videoPlayerController.pause()
                  : _videoPlayerController.play();
            },
            child: AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController)),
          )
        : Container(
            width: double.infinity,
            height: Dimens.videoContainerHeight,
            color: Colors.grey,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
