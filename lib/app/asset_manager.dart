// images root path
const String imageRootPath = 'assets/images/';

// images path
const String tProfileImg = 'profile.jpg';

class TAssetManager {
  TAssetManager._();

  static String getImagePath(String path) => imageRootPath + path;
}
