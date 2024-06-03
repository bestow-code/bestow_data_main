import 'package:bestow_data_main/objectbox.g.dart';
import 'package:bestow_data_main/src/model/model.dart';
import 'package:test/test.dart';

void main() {
  late Store store;
  setUp(() => store = openStore());
  tearDown(() => store.close());
  test('', () {
    final box = store.box<ContainmentImpl>();
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
