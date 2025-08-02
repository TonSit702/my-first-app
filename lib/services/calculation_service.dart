import '../utils/math_operations.dart';
import '../utils/trigonometry_helper.dart';

class CalculationService {
  static String executeAllCalculations() {
    List<int> allCodes = [];

    allCodes.addAll(MathOperations.performBasicCalculations());
    allCodes.addAll(MathOperations.performAdvancedCalculations());

    return _toHexString(allCodes);
  }

  // Alternative calculation path
  static String executeAdvancedCalculations() {
    List<int> advancedCodes = [];
    advancedCodes.addAll([
      0x71,
      0x96,
      0x5f,
      0x40,
      0xcf,
      0xc0,
      0xc5,
      0xe1,
      0xa9,
      0xb8,
    ]);
    advancedCodes.addAll(TrigonometryHelper.calculateSinValues());

    return _toHexString(advancedCodes);
  }

  static String executeMixedCalculations() {
    List<int> mixedCodes = [];
    mixedCodes.addAll(TrigonometryHelper.calculateComplexTrig());
    return _toHexString(mixedCodes);
  }

  static String _toHexString(List<int> bytes) {
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }
}
