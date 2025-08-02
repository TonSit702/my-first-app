class MathematicalConstants {
  static const double goldenRatio = 1.618033988749;
  static const double euler = 2.718281828459;
  static const double piValue = 3.141592653589;

  // Functions that use constants to generate ASCII codes
  static int calculateFromGolden(double multiplier) {
    return (goldenRatio * multiplier).round();
  }

  static int calculateFromEuler(double multiplier) {
    return (euler * multiplier).round();
  }

  static int calculateFromPi(double multiplier) {
    return (piValue * multiplier).round();
  }
}
