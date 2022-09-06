import 'package:flutter_test/flutter_test.dart';

import 'package:sp_adapter/sp_adapter.dart';

void main() {
  test('adds one to input values', () {
    SPAdapter.initWidth(375, 750);
    expect(375.sp, 750);
    expect((375 / 2).sp, 750 / 2);
  });
}
