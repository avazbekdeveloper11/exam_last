import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatelessWidget {
  VideoPage({Key? key}) : super(key: key);
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
  );
  @override
  Widget build(BuildContext context) {
    return videoScaffold();
  }

  Scaffold videoScaffold() {
    return Scaffold(
    body: Column(
      children: [
        Expanded(
          flex: 4,
          child: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
            ),
            builder: (BuildContext, Widget) {
              return Container();
            },
          ),
        ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidht(18)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getHeight(12),
                      bottom: getHeight(4),
                    ),
                    child: Text(
                      "Figmada mobil ilova dizayni",
                      style: StyleConst.instance.styleBold(16),
                    ),
                  ),
                  Text(
                    "Bu darsda biz siz bilan figma dasturida web sayt uchun dizayn qilishni sinab ko`ramiz. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: StyleConst.instance.styleSmall(14),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: getHeight(15)),
                    child: Text(
                      "@avazbek_mavlonov",
                      style: StyleConst.instance.styleSmall(14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
  }
}
