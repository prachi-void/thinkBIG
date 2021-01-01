import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoDemo extends StatefulWidget{
  videoDemo():super();
VideoDemoState createState()=>VideoDemoState();

}


class VideoDemoState extends State<videoDemo>{

  VideoPlayerController _controller;
  Future<void>_initializeVideoPlayerFuture;
  VoidCallback listener;
  @override
  void initState() {
    _controller=VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _initializeVideoPlayerFuture=_controller.initialize();
    _controller.setLooping(false);


    super.initState();
    listener = () {
      setState(() {});
    };

  }

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
    debugPrint('CmVideoPlayer - dispose()');
  }

  @override
  void deactivate() {
    _controller.setVolume(0.0);
    _controller.removeListener(listener);
    super.deactivate();
  }

  Widget build(BuildContext context)
{
  return Scaffold(
  appBar: AppBar(
  title: Text("thinkBIG"),
  ),
body: FutureBuilder(
  future: _initializeVideoPlayerFuture,
  builder: (context,snapshot){
    if (snapshot.connectionState==ConnectionState.done){
      return AspectRatio(aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),);
    }
    else{
      return Center(
        child: CircularProgressIndicator(),

      );
    }
  },
),
    floatingActionButton: FloatingActionButton(
      onPressed: (){

          if (_controller.value.isPlaying ){
            _controller.pause();
           // icon: new Icon(Icons.pause);
          }else
          {
            _controller.play();
            //Icon(Icons.play_arrow());
          }

        },
        child: Icon(Icons.play_arrow)
    ),
  );
}
}
