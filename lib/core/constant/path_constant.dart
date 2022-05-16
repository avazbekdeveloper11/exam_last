class PathConstant {
  static final PathConstant _instance = PathConstant._init();
  static PathConstant get instance => _instance;
  PathConstant._init();
  // * PNG
  String appIcon = "assets/images/png/app_icon.png";
  String organaApp = "assets/images/png/organa_app.png";

  // * SVG
  String message = "assets/images/svg/message.svg";
  String play = "assets/images/svg/play.svg";
  String download = "assets/images/svg/download.svg";
}
