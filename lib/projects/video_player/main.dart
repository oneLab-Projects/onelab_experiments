import 'package:flutter/widgets.dart' show Widget;
import 'package:onelab_experiments/domain/entity/project.dart';

import 'widget.dart';

class VideoPlayerProject implements Project {
  @override
  int id = 1;

  @override
  String name = "Video Player";

  @override
  String description;

  @override
  ProjectType type = ProjectType.widget;

  @override
  DevelopmentStatus developmentStatus = DevelopmentStatus.dev;

  @override
  Widget source = VideoPlayer(
    url:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  );

  @override
  InitialSize initialSize = InitialSize(355, 200);
}
