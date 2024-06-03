import 'dart:io';
import 'dart:math';

import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:test/test.dart';

void main() {
  Store? store;
  setUp(
    () => store = openStore(
      directory:
          Directory.current.createTempSync().path,
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
    // Directory('objectbox').deleteSync(recursive: true);
    print(store!.directoryPath);
    // final dispatcher = ContainerAllocationDispatcher();
    final box = store!.box<ContainerAllocationImpl>();
    // dispatcher
    //   ..box = box
    //   ..dispatch(
    //     AddContainerAllocation(
    //       containerType: api.ContainerType.bag,
    //       start: 0,
    //       spans: [(api.ContainerSize.small, 10)],
    //       fixedDisplayLength: 2,
    //     ),
    //   );
  });
}
