import 'dart:io';

import 'package:bestow_data/bestow_data_command.dart';
import 'package:bestow_data/bestow_data_model.dart' as api;
import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/dispatcher/container_allocation_dispatcher.dart';
import 'package:bestow_data_main/src/model/persistence/persistence.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    Directory('objectbox').deleteSync(recursive: true);
    final store = openStore();
    print(store.directoryPath);
    final dispatcher = ContainerAllocationDispatcher();
    final box = store.box<ContainerAllocation>();
    dispatcher
      ..box = box
      ..dispatch(
        AddContainerAllocation(
          containerType: api.ContainerType.bag,
          start: 0,
          spans: [(api.ContainerSize.small, 10)],
          fixedDisplayLength: 2,
        ),
      );
  });
}
