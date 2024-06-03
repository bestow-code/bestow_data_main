import 'dart:io';

import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:test/test.dart';

void main() {
  Store? store;
  setUp(
    () => store = openStore(
      directory: Directory.current.createTempSync().path,
      // Directory.current.createTempSync('${Random().nextInt(100000)}').path,
    ),
  );
  tearDown(() {
    store?.close();
    if (store != null) {
      Directory(store!.directoryPath).deleteSync(recursive: true);
    }
  });
  test('', () {
    final box = store!.box<ContainmentImpl>();
    assert(box.isEmpty(), '');
    // final allocation = ContainerAllocation(
    //     containerTypeId: ContainerType.bag.id,
    //     start: 0,
    //     spans: [
    //       ContainerRangeSpan(
    //           containerRangeAllocation: containerRangeAllocation,
    //           containerSizeId: containerSizeId,
    //           spanLength: spanLength)
    //     ]);
  });
}
