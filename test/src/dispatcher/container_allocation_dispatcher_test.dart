import 'dart:io';

import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:test/test.dart';

void main() {
  late Store store;
  setUp(() => store = openStore());
  tearDown(() => store.close());
  test('', () {
    Directory('objectbox').deleteSync(recursive: true);
    print(store.directoryPath);
    // final dispatcher = ContainerAllocationDispatcher();
    final box = store.box<ContainerAllocationImpl>();
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
