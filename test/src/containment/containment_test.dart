import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/containment/containment.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    final store = openStore();
    final box = store.box<Containment>();
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
