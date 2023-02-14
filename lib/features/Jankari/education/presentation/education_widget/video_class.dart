import 'package:palikaa/export_pages.dart';
import 'package:pod_player/pod_player.dart';


class ClassVideo extends StatefulWidget {
final String videoUrl;
const ClassVideo(this.videoUrl);

  @override
  State<ClassVideo> createState() => _PlayVideoFromNetworkState();
}

class _PlayVideoFromNetworkState extends State<ClassVideo> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.network(
        widget.videoUrl
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PodVideoPlayer(
        onVideoError: (){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.portable_wifi_off_rounded, color: Colors.white,),
                Text('check your connection',style: TextStyle(color: Colors.pink),),
              ],
            ),
          );
        },
        controller: controller,videoAspectRatio: 16/9,)),
    );
  }
}
