import 'package:bestow_data/bestow_data_model.dart' as api;
import 'package:bestow_data_main/src/model/model.dart';
import 'package:objectbox/objectbox.dart';

///
@Entity()
class ContainerAllocationImpl implements api.ContainerAllocation {
  ///
  ContainerAllocationImpl(
    this.containerTypeUid,
    // this.start,
    this.fixedDisplayLength, {
    String? uid,
    this.id = 0,
  }) : uid = uid ?? '$containerTypeUid:';

  ///
  @Id()
  int id;

  // ///
  // @override
  // final int start;

  ///
  @override
  final int fixedDisplayLength;

  ///
  final int containerTypeUid;

  ///
  @override
  @Backlink()
  final spans = ToMany<ContainerSpanImpl>();

  //
  // @override
  // api.ContainerType get containerType =>
  //     api.ContainerType.lookUp(containerTypeUid);

  ///
  @Unique()
  late final String uid;

  @override
  api.ContainerKind get kind => throw UnimplementedError();

  @override
  api.ContainerAllocationRef get ref => throw UnimplementedError();

  @override
  int get startIndex => throw UnimplementedError();
}
