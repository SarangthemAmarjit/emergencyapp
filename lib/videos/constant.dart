import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videopage extends StatefulWidget {
  final VideoPlayerController controller;
  const Videopage({Key? key, required this.controller}) : super(key: key);

  @override
  State<Videopage> createState() => _VideopageState();
}

class _VideopageState extends State<Videopage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 300,
        child: Column(children: [
          AspectRatio(
            aspectRatio: widget.controller.value.aspectRatio,
            child: VideoPlayer(widget.controller),
          ),
          Text("Total Duration: ${widget.controller.value.duration}"),
          VideoProgressIndicator(widget.controller,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                backgroundColor: Colors.redAccent,
                playedColor: Colors.green,
                bufferedColor: Colors.purple,
              )),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    if (widget.controller.value.isPlaying) {
                      widget.controller.pause();
                    } else {
                      widget.controller.play();
                    }

                    setState(() {});
                  },
                  icon: Icon(widget.controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),
              IconButton(
                  onPressed: () {
                    widget.controller.seekTo(const Duration(seconds: 0));

                    setState(() {});
                  },
                  icon: const Icon(Icons.stop))
            ],
          )
        ]));
  }
}
