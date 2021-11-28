import 'package:copy_with_utils/copy_with_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "ValueCallback support null value",
    () {
      ValueCallback<int?>? callback;
      expect(callback, equals(null));
    },
  );

  test(
    "ValueCallback support nullable parameter types",
    () {
      ValueCallback<int?>? callback;
      callback = () => null;
      expect(callback(), equals(null));
    },
  );

  test(
    "switcher() returns defaultValue if valueCallback is null",
    () {
      ValueCallback<int>? callback;
      expect(callback, equals(null));
      expect(switcher(callback, 42), equals(42));
    },
  );

  test(
    "switcher() returns valueCallback result if valueCallback is not null",
    () {
      ValueCallback<int>? callback;
      expect(callback, null);
      callback = () => 42;
      expect(callback(), equals(42));
      expect(switcher(callback, 41), equals(42));
    },
  );
}
