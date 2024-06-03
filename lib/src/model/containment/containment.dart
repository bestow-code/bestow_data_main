import 'package:bestow_data/bestow_data_model.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ContainmentImpl implements Containment {
  ///
  ContainmentImpl({
    this.id = 0,
  });

  // @override
  // Container get container => container_.target!;
  //
  // @override
  // Container get containingContainer => containingContainer_.target!;
  //
  // @override
  // Item get item => item_.target!;
  //
  // Internal

  // ///
  // final containingContainer_ = ToOne<Container>();
  //
  // ///
  // final container_ = ToOne<Container>();
  //
  // ///
  // final item_ = ToOne<Item>();
  //
  ///
  @Id()
  int id;

  //
  // @override
  // String toString() {
  //   return 'Containment{containingContainer: $containingContainer_,
  //   container: '
  //       '$container_, item: $item_, containmentId: $id}';
  // }
  //
  // @override
  // // ignore: avoid_equals_and_hash_code_on_mutable_classes
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is ContainmentImpl &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id;

  // @override
  // // ignore: avoid_equals_and_hash_code_on_mutable_classes
  // int get hashCode => id.hashCode;

  @override
  Container get container => throw UnimplementedError();

  @override
  ContainmentRef get ref => throw UnimplementedError();

  @override
  ContainmentSubject get subject => throw UnimplementedError();
}
