library sp_adapter;

extension SPAdapter on num {
  static double _ratioW = 0.0;
  static void initWidth(int designWidth, double windowWidth) {
    _ratioW = windowWidth / designWidth;
  }

  double get sp {
    return this * _ratioW;
  }
}
